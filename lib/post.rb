class Post
    attr_accessor :name, :author

    @@all = []

    def initialize(name)
        @title = name
        save       
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if author
          self.author.name
        end
      end
end