json.extract! artist, :id, :name, :created_at, :updated_at
json.albums artist.albums, partial: 'api/v1/albums/album', as: :album
json.url api_v1_artist_url(artist, format: :json)
