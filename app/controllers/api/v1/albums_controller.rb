class Api::V1::AlbumsController < Api::V1::ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albums = Album.all
  end

  def show
  end

  def new
    @album = Album.new
  end

  def edit
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.json { render :show, status: :created, location: api_v1_album_url(@album) }
      else
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.json { render :show, status: :ok, location: api_v1_album_url(@album) }
      else
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:name, :genre_id, :year, :artist_id)
    end
end
