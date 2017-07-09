class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name_song
      t.string :artist_name
      t.time :duration
      t.string :genre

      t.timestamps
    end
  end
end
