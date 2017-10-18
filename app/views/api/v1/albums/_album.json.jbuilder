json.extract! album, :id, :name, :year, :created_at, :updated_at
json.url api_v1_album_url(album, format: :json)
