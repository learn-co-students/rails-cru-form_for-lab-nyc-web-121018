class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :edit]

  def index
  @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(post_params)
    redirect_to song_path(@song)
  end

  def update
    @song.update(post_params)
    redirect_to song_path(@song)
  end

  def edit
  end

  private
    def post_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def set_song
      @song = Song.find(params[:id])
    end
end
