json.extract! genre, :id, :name, :created_at, :updated_at
json.album_count genre.albums.count
json.albums genre.albums, partial: 'albums/album', as: :album
json.url genre_url(genre, format: :json)
