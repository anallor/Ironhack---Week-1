require "date"

class Blog

 attr_accessor(:posts)

  def initialize
	@posts = []
  end

  def add_posts(post)
  	@posts << post
  end

  def sort_by_date
  	@posts.sort {|post1, post2| post2.date <=> post1.date}
  end

  def sponsored
  	@posts.each do |post|
      title = post.sponsored ? "*** #{post.title} ***" : post.title
      puts "#{title}\n==================\n#{post.text}\n---------------------\n\n\n"
    end
end

end

class Posts
attr_accessor(:title, :date, :text, :sponsored)
	def initialize(title, date, text, sponsored = false)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end

post1 = Posts.new("Title 1", Date.new(2015,05,03), "Body of post 1", true)
post2 = Posts.new("Title 2", Date.new(2015,04,02), "Body of post 2")
post3 = Posts.new("Title 3", Date.new(2015,06,01), "Body of post 3", true)

blog = Blog.new

blog.add_posts(post1)
blog.add_posts(post2)
blog.add_posts(post3)

blog.sponsored