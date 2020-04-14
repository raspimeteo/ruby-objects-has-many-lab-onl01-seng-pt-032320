class Song
    ## add attribute getters and setters
    ## :artist creates a link to the Artist class
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        ## initialize a new song with its name and genre
        @name = name
        @genre = genre
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end