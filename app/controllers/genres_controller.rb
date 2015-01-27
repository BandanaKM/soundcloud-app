class GenresController < ApplicationController

  # before_action :require_admin, only: [:new, :create, :edit, :update, destroy]

  # before_action :require_user


  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end


  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end


  def edit
    @genre = Genre.find(params[:id])
  end


  def update
    @genre = Genre.find(params[:id])
    if @genre.update_attributes(genre_params)
      redirect_to(:action => 'show', :id => @genre.id)
    else
      render('index')
    end
  end


  def destroy
    genre = Genre.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end



  private

    def genre_params
      params.require(:genre).permit(:name)
    end
end
