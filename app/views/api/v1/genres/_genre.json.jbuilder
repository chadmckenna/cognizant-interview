json.extract! genre, :id, :name, :created_at, :updated_at
json.album_count genre.albums.count
json.albums genre.albums, partial: 'api/v1/albums/album', as: :album
json.url api_v1_genre_url(genre, format: :json)
