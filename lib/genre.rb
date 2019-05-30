require_relative "./artist.rb"
require_relative "./song.rb"

class Genre 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        self.songs.map do |song|
            song.artist
        end
    end
end