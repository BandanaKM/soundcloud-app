class CreatePlaylistSongs < ActiveRecord::Migration
   def change
   	drop_table :songs_playlists
    create_table :playlists_songs do |t|
      t.integer :playlist_id
      t.integer :song_id

      t.timestamps null: false
    end
  end

end 