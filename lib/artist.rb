## require 'pry'
class Artist
    ## add attribute getters and setters
    attr_accessor :name

    def initialize(name)
        ## Initialize a new artist with its name
        @name = name
        ## create an empty list for its songs
        @songs = []

    end

    def add_song(song)
        ## add song to the @songs list
        @songs << song
        ## make a song belong to its artist
        song.artist = self
    end

    def songs
        ## return all songs in the @songs list
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name (name)
      song = Song.new(name)
      add_song(song)
    end
    
    def self.song_count
      Song.all.count
    end

end