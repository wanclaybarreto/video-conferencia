class Room < ApplicationRecord
    
    before_create :set_opentok_id

    private

    def set_opentok_id
        opentok = OpenTok::OpenTok.new(ENV['VONAGE_API_KEY'], ENV['VONAGE_API_SECRET'])
        session = opentok.create_session
        self.vonage_session_id = session.session_id
    end
end
