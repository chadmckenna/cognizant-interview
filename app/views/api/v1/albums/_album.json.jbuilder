json.extract! album, :id, :name, :year, :artist_id, :created_at, :updated_at
json.genre album.genre.name
json.url api_v1_album_url(album, format: :json)
