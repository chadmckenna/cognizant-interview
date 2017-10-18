json.extract! artist, :id, :name, :created_at, :updated_at
json.url api_v1_artist_url(artist, format: :json)
