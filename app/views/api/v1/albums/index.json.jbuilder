json.array! @albums do |album|
   json.partial! 'api/v1/albums/album', album: album
   json.artist album.artist, :id, :name
   json.genre album.genre, :id, :name
end
