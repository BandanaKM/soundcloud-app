class AddPlaylistsToSongsPlaylists < ActiveRecord::Migration
  def change
    add_reference :songs_playlists, :playlists, index: true
  end
end
