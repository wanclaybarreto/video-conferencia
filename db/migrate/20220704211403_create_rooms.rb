class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :vonage_session_id
      t.string :video_url

      t.timestamps
    end
  end
end
