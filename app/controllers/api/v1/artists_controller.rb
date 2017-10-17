class Api::V1::ArtistsController < Api::V1::ApplicationController
  before_action :set_artist, only: [:show]

  def index
    @artists = Artist.all
  end

  def show
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end
end
