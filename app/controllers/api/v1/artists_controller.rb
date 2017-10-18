class Api::V1::ArtistsController < Api::V1::ApplicationController
  before_action :set_artist, only: [:show]

  def index
    @artists = Artist.all
  end

  def show
  end

  def create
    @artist = Artist.where(artist_params).first_or_create

    respond_to do |format|
      if @artist.errors.messages.empty?
        format.json { render :show, status: :created, location: api_v1_artist_url(@artist) }
      else
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name)
    end
end
