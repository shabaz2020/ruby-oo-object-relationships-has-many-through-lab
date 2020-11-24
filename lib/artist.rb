class Artist 
   @@all = []
   attr_accessor :name

   def initialize(name)
      @name = name
      @@all << self
   end

   def self.all
      @@all
   end

   def new_song(name, genre)
      #the song should know it belongs to an artist
      Song.new(name, self, genre)
   end

   def songs
      #that iterates through all songs and find s
      #the song that belongs to that artist
      Song.all.select {|song| song.artist == self}
   end

   def genres
      #that iterates over the artist's songs and collects the genre of each song
      songs.map(&:genre)
   end
end