class AddUsersToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :users, index: true
  end
end
