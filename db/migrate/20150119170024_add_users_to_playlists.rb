class AddUsersToPlaylists < ActiveRecord::Migration
  def change
    add_reference :playlists, :users, index: true
  end
end
