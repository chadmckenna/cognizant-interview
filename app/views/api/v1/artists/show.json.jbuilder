json.partial! 'api/v1/artists/artist', artist: @artist

json.albums @artist.albums do |album|
  json.partial! 'api/v1/albums/album', album: album
  json.genre album.genre, partial: 'api/v1/genres/genre', as: :genre
end
