require 'open-uri'

class PostsController < ApplicationController
  # will need to separate wordpress, blogger, and parse differently on front end as well
  def create
    feed = open('http://delayedmissives.com/feed').read
    render text: feed
  end

end
