class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit]

  def index
  @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(post_params)
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(post_params)
    redirect_to artist_path(@artist)
  end

  def edit
  end

  private
    def post_params
      params.require(:artist).permit(:name, :bio)
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end
end
