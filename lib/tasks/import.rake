require 'csv'

namespace :db do
  desc "Import data from csv file"
  task :import, [:filename] => :environment do |t, args|
    raise "Filename is required" unless args[:filename]

    puts "Importing file #{args[:filename]}..."
    CSV.foreach(args[:filename], { col_sep: ',', headers: true, encoding: "ISO-8859-1:UTF-8" }) do |row|
      puts "#{row['album']} by #{row['artist']} -- #{row['genre']} -- #{row['year']}..."
      artist = Artist.where(name: row['artist']).first_or_create
      puts artist.inspect
      album = Album.where(
        name: row['album'],
        artist: artist
        ).first_or_create(
          genre: row['genre'],
          year: row['year'].to_i
        )
      puts album.inspect
    end
    puts "Import complete"
  end
end
