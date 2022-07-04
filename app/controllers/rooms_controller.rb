class RoomsController < ApplicationController
    before_action :set_room, only: [:show]

    def create
        @room = Room.new()

        @room.video_url = params[:room][:video_url].gsub('watch?v=', 'embed/')
        
        if @room.save
            redirect_to "/rooms/#{@room.vonage_session_id}?user_name=#{params[:room][:user_name]}&video_url=#{@room.video_url}", notice: "Sala criada com sucesso!"
        else
            redirect_to root_path, alert: 'Algo deu errado e não foi possível criar a sala.'
        end
    end

    def show
        opentok = OpenTok::OpenTok.new(ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET'])
        @vonage_session_id = @room.vonage_session_id
        @token = opentok.generate_token(@vonage_session_id, {name: params[:user_name]})
    end

    def search
        room = Room.find_by(vonage_session_id: params[:room_url])
        
        if room.present?
            redirect_to "/rooms/#{room.vonage_session_id}?user_name=#{params[:user_name]}&video_url=#{room.video_url}"
        else
            redirect_to root_path, alert: 'Sala não encontrada.'
        end
    end

    private 

    def set_room
        @room = Room.find_by(vonage_session_id: params[:id])
    end
end
