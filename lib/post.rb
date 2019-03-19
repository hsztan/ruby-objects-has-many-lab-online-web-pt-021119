class Post
  attr_accessor :title, :author
  attr_reader :all

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end
end
