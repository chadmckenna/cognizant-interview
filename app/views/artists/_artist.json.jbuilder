json.extract! artist, :id, :name, :created_at, :updated_at
json.albums artist.albums, partial: 'albums/album', as: :album
json.url artist_url(artist, format: :json)
