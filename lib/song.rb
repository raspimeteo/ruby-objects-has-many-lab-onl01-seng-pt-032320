require 'pry'
class Song
    ## add attribute getters and setters
    ## :artist creates a link to the Artist class
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        ## initialize a new song with its name and genre
        @name = name
        @genre = genre
        ##binding.pry
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist == nil
            return nil
        else
            self.artist.name
        end
    end


end