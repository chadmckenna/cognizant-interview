class Api::V1::YearsController < Api::V1::ApplicationController
  def index
    @years = Album.group_by_year
  end
end
