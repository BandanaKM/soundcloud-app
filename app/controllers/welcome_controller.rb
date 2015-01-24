class WelcomeController < ApplicationController
  
  def home
  	@songs = Song.all
    # client = SoundCloud.new(client_id: "b44e85efb74863fcde285559186549ec")
    # @tracks = client.get('/tracks', limit: 5, order: 'hotness')
  end


# this gives us gives us access to ten tracks that we will use. 

# problem: seems like i don't need a genre?

# let's see if we can see the jason file 


end
