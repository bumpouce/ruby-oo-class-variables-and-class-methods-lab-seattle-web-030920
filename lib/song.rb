require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre

        @name = name
        @artist = artist
        @genre = genre
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
        breakdown = {}

        self.genres.each do |unique_genre|
            count = 0
            @@genres.collect {|this_genre| count += 1 if this_genre == unique_genre}            
            breakdown[unique_genre] = count
        end
        
        breakdown
    end

    def self.artist_count
        breakdown = {}

        self.artists.each do |unique_artist|
            count = 0
            @@artists.collect {|this_artist| count += 1 if this_artist == unique_artist}            
            breakdown[unique_artist] = count
        end
        
        breakdown
    end

end
