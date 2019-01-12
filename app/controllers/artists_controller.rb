class ArtistsController < ApplicationController
  # you will write your controller code here
  # RESTful Routes # 7
  # CRUD
  # HTTP Verbs => GET, POST, PATCH/PUT, DELETE

  # Controller Actions <= actionssssssss

  # index => showed everything
  # get '/children' <= sinatra way
  def index
    # do the stuff here


    # omg our model
    @artists = Artist.all

    # response (erb, view)
    # erb :"children/index"
    # render(:index)
    # will render the file with that name,
    # it will look for it in a folder based on the controller name
    # but because we follow the same pattern of conventions,
    # if you don't render, it will just look for it using those rules automatically

    # dont touch that!v too powerful!!!
  end

  # show => 1 thing
  def show
    @artist = Artist.find(params[:id])
  end
    #byebug


  # create => new, save
  # new => getting that form
  def new
     @artist = Artist.new
  end

  # create => post here
  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  # edit
  def edit
    @artist = Artist.find(params[:id])
  end

  # update
  def update
    @artist = Artist.find(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(@artist)
  end
  #
  # # delete => destroy
  # def destroy
  # end

  # def deactivate
  # end
end
