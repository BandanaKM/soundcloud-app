class WelcomeController < ApplicationController

  helper_method :current_user

  def home
  	genre = params[:genre].present? ? params[:genre] : nil
  	  if genre.present?
  	   @songs = Song.where(genre: genre)
  	  else 
       @songs = Song.all
      end
  	   @genres = Genre.all
    client = SoundCloud.new(client_id: "b44e85efb74863fcde285559186549ec")
    @tracks = client.get('/tracks', limit: 3, order: 'hotness')
  end


  def repost
    song = params[:song_id]
    current_user.songs << songs
  end

end 