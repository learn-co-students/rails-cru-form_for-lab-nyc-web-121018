class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :update, :edit]

  def index
  @genres = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(post_params)
    redirect_to genre_path(@genre)
  end

  def update
    @genre.update(post_params)
    redirect_to genre_path(@genre)
  end

  def edit
  end

  private
    def post_params
      params.require(:genre).permit(:name)
    end

    def set_genre
      @genre = Genre.find(params[:id])
    end
end
