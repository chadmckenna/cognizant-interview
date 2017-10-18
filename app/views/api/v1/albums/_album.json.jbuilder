json.extract! album, :id, :name, :year, :created_at, :updated_at
json.artist album.artist, :id, :name
json.genre album.genre, :id, :name
json.url api_v1_album_url(album, format: :json)
