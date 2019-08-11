class Author
  
  attr_accessor :name, :posts
 
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|posts| posts.author == self}
    # @posts
  end
  
  def add_post(posts)
    posts.author = self
    # posts.genre = genre
    @posts << posts
  end
  
  def add_post_by_title(title)
    posts = Post.new(title)
    posts.author = self
  end
  
    def self.post_count
   return Post.all.count
  end
  
  def name
    @name
  end  

end