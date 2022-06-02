require_relative "song.rb"

class Genre
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end
    
    def self.all 
        @@all
    end 

    def songs 
        Song.all.filter { |song| song.genre == self }
    end 

    def artists 
        self.songs.collect { |song| song.artist }
    end

end 

