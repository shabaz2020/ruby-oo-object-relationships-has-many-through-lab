class Genre

    @@all = []
    attr_accessor :name 

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        #that iterates through all songs and the songs that belongs to the genre
        Song.all {|song| song.genre == self}
    end

    def artists
        #iterates over the genre's collection of songs and collects the artist tat owns each song
        songs.map(&:artist)
    end
end