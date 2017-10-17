class Genre < ApplicationRecord
  has_many :albums

  scope :sort_by_albums, -> {
    all.includes(:albums).sort{ |x, y| y.albums.count <=> x.albums.count }
  }
end
