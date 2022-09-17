class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.string :name
      t.string :discord
      t.tstzrange :hours
      t.string :years_playing
      t.jsonb :week_days
      t.boolean :use_voice_channel, default: false
      t.belongs_to :games
      
      t.timestamps
    end
  end
end
