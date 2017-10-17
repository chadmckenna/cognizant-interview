json.extract! album, :id, :name, :year, :artist_id, :created_at, :updated_at
json.genre album.genre.name
json.url album_url(album, format: :json)
