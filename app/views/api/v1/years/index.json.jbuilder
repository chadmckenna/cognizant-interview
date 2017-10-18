json.array! @years do |year|
  json.set! year[0] do
    json.array! year[1] do |album|
      json.partial! 'api/v1/albums/album', album: album
      json.artist album.artist, partial: 'api/v1/artists/artist', as: :artist
      json.genre album.genre, partial: 'api/v1/genres/genre', as: :genre
    end
  end
end
