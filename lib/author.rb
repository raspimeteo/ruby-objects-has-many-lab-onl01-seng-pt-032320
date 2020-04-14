require 'pry'
class Author
    ## add attribute getters and setters
    attr_accessor :name

    def initialize(name)
        ## Initialize a new artist wit its name
        @name = name
        ## create an empty list for its songs
        @posts = []
    end

    def add_post(post)
        ## add song to the @songs list
        @posts << post
        ## make a song belong to its artist
        post.author = self
    end

    def posts
        ## return all songs in the @songs list
        Post.all.select {|post| post.author == self}
    end

    def add_post_by_title (title)
      ##binding.pry
      post = Post.new(title)
      add_post(post)
      ##binding.pry
      
      

    end
    
    def self.post_count
      Post.all.count
    end

end