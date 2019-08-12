class Post

    @@all = []

    attr_accessor :title, :author

    def initialize(title, author=nil)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.author_name
        else
            nil
        end
    end

end