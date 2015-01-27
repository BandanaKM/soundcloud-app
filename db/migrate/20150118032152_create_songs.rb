class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :image
      t.string :track_id

      t.timestamps null: false
    end
  end
end
