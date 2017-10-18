json.partial! 'api/v1/albums/album', album: @album

json.artist @album.artist, partial: 'api/v1/artists/artist', as: :artist
json.genre @album.genre, partial: 'api/v1/genres/genre', as: :genre
