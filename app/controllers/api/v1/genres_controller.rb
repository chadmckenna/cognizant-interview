class Api::V1::GenresController < Api::V1::ApplicationController
  before_action :set_genre, only: [:show]

  def index
    @genres = Genre.sort_by_albums
  end

  def show
  end

  def create
    @genre = Genre.where(genre_params).first_or_create

    respond_to do |format|
      if @genre.errors.messages.empty?
        format.json { render :show, status: :created, location: api_v1_genre_url(@genre) }
      else
        format.json { render json: @genre.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_genre
      @genre = Genre.find(params[:id])
    end

    def genre_params
      params.require(:genre).permit(:name)
    end
end
