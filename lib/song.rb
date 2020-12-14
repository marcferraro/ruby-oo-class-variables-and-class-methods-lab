require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.include? (artist)
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end
    
    def self.list
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            if hash.keys.include? (genre)
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if hash.keys.include? (artist)
                hash[artist] += 1
            else
                hash[artist] = 1
            end
        end
        hash
    end

end