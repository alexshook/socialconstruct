class BlogsController < ApplicationController
  # include Parser

  def index
    @posts = PostFetcher::get_latest_blog_posts
  end
end
