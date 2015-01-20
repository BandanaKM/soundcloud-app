class AddSongsToSongsPlaylists < ActiveRecord::Migration
  def change
    add_reference :songs_playlists, :songs, index: true
  end
end
