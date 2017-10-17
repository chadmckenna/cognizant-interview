class Album < ApplicationRecord
  belongs_to :genre
  belongs_to :artist

  scope :group_by_year, -> {
    Album.order('year desc').group_by(&:year).sort{|x, y| y[1].count <=> x[1].count}
  }
end
