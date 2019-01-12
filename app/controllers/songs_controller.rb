class SongsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
  @song = Song.find(params[:id])
  @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
  redirect_to song_path(@song)
end

  def create
    @song = Song.new
	  @song.name = params[:name]
	  @song.artist_id = params[:artist_id]
	  @song.genre_id = params[:genre_id]
	  @song.save
	  redirect_to song_path(@song)
  end
end
