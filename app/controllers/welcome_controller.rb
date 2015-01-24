class WelcomeController < ApplicationController

  def home
  	@songs = Song.all
  end

end
