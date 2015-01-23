class WelcomeController < ApplicationController
  
  def home
  	@songs = Song.all
  	@genres = Genre.all 
  end

end
