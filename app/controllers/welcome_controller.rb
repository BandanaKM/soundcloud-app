class WelcomeController < ApplicationController

  def home
  	@songs = Song.all
  	@genres = Genre.all
    client = SoundCloud.new(client_id: "b44e85efb74863fcde285559186549ec")
    @tracks = client.get('/tracks', limit: 3, order: 'hotness')
  end

end