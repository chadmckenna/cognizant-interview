json.extract! artist, :id, :name, :created_at, :updated_at

json.albums artist.albums do |album|
  json.id album.id
  json.name album.name
  json.year album.year

  json.genre do
    json.id album.genre.id
    json.name album.genre.name
    json.url api_v1_genre_url(album.genre, format: :json)
  end

  json.created_at album.created_at
  json.updated_at album.updated_at
  json.url api_v1_album_url(album, format: :json)
end

json.url api_v1_artist_url(artist, format: :json)
