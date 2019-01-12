class GenresController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
    @genres = Genre.all
  end
  def show
    @genre = Genre.find(params[:id])
  end

  def new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end



  def create
    @genre = Genre.new
    @genre.name = params[:name]
    @genre.save
    redirect_to genre_path(@genre)
  end

end
