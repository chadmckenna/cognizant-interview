json.partial! 'api/v1/genres/genre', genre: @genre
json.album_count @genre.albums.count
json.albums @genre.albums, partial: 'api/v1/albums/album', as: :album
