class PlaylistsController < ApplicationController

  # before_action :require_user

  # def index
  #   @playlists = Playlists.all
  # end

  # def show
  #   @playlist = Playlist.find(params[:id])
  # end

  # def new
  #   @playlist = Playlist.new
  # end


  # def create
  #   @playlist = Playlist.new(playlist_params)
  #   if @playlist.save
  #     redirect_to(:action => 'index')
  #   else
  #     render('new')
  #   end
  # end


  # def edit
  #   @playlist = Playlist.find(params[:id])
  # end


  # def update
  #   @playlist = Playlist.find(params[:id])
  #   if @playlist.update_attributes(playlist_params)
  #     redirect_to(:action => 'show', :id => @playlist.id)
  #   else
  #     render('index')
  #   end
  # end


  # def destroy
  #   playlist = Playlist.find(params[:id]).destroy
  #   redirect_to(:action => 'index')
  # end



  # private

  #   def playlist_params
  #     params.require(:playlist).permit(:title)
  #   end
    
end
