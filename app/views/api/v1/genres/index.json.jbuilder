json.array! @genres do |genre|
  json.partial! genre, partial: 'api/v1/genres/genre', as: :genre
  json.album_count genre.albums.count
  json.albums genre.albums do |album|
    json.partial! album, partial: 'api/v1/albums/album', as: :album
    json.artist album.artist, partial: 'api/v1/artists/artist', as: :artist
  end
end
