require 'open-uri'

class PostFetcher
  def self.get_latest_blog_posts
    feed = open("http://delayedmissives.com/feed").read
    feed2 = open("http://madeupny.blogspot.com/feeds/posts/default").read
  end
end
