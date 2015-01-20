class Song < ActiveRecord::Base

  belongs_to :genre
  has_and_belongs_to_many :playlists
  belongs_to :user

end
