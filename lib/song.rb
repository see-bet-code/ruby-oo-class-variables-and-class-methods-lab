require 'pry'

class Song
    @@count = 0
    @@artists = @@genres = []
    @@artist_count = @@genre_count = {}
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
        @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
        @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
end