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
     @tracks = $sc_client.get('/tracks', limit: 3, order: 'hotness')
  end

    # need to refactor this code 


  def search
    query = params[:query]
    @songs = $sc_client.get('/tracks', q: query, limit: 3)
  end

  def repost
    song = Song.find_or_create_by(track_id: params[:song_id])
    current_user.songs << song
    redirect_to root_url, notice: 'Song was reposted to your profile.'
  end


end 