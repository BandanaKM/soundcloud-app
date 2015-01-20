class AddGenresToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :genres, index: true
  end
end
