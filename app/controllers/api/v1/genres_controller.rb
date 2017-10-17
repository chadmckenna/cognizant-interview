class Api::V1::GenresController < Api::V1::ApplicationController
  before_action :set_genre, only: [:show]

  def index
    @genres = Genre.sort_by_albums
  end

  def show
  end

  private
    def set_genre
      @genre = Genre.find(params[:id])
    end
end
