require_relative "song.rb"
require_relative "genre.rb"

class Artist

    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end 

    def self.all 
        @@all
    end 

    def songs 
        Song.all.filter { |songs| songs.artist == self}
    end

    def genres 
        songs.collect { |songs| songs.genre}
    end 

end 
