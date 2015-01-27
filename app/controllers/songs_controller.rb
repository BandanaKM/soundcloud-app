class SongsController < ApplicationController

  # before_action :require_user

  # before_action :require_admin, only: [:new, :create, :edit, :update, destroy]

  def index
    @songs = Song.all
  end


  def show
    @song = Song.find(params[:id])
  end


  def new
    @song = Song.new
  end


  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end


  def edit
    @song = Song.find(params[:id])
  end


  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(song_params)
      redirect_to(:action => 'show', :id => @song.id)
    else
      render('index')
    end
  end


  def destroy
    song = Song.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end



  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :artist, :image, :track_id)
    end
end
