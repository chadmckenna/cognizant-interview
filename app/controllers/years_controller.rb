class YearsController < ApplicationController
  def index
    @years = Album.group_by_year
  end
end
