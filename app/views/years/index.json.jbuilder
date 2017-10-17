json.array! @years do |year|
  json.set! year[0] do
    json.array! year[1] do |album|
      json.extract! album, :id, :name, :created_at, :updated_at
      json.artist album.artist, :id, :name
      json.genre album.genre.name
      json.url album_url(album, format: :json)
    end
  end
end
