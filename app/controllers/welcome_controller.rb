class WelcomeController < ApplicationController

  def home
  	@songs = Song.all

    client = SoundCloud.new(client_id: "3d2ec585a5565ddf5124e3ce9f39e2f6")
    @tracks = client.get('/tracks', limit: 3, order: 'hotness')
  end

end
