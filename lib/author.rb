require 'pry'
class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        ## return all posts in the @posts list
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        ## add post to the @post list
        @posts << post
        ## make a post belong to its artist
        post.author = self
    end

    def add_post_by_title(name)
        post = Post.new(name)
        ##binding.pry
        add_post(post)
        ##binding.pry
      end

      def self.post_count
        Post.all.count
      end

end