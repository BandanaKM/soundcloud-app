class Song < ActiveRecord::Base

  belongs_to :genre
  has_and_belongs_to_many :playlists
  belongs_to :user

  def full_url
  	"https://w.soundcloud.com/player/?url=https://api.soundcloud.com/tracks/#{self.track_id}"
  end

end
