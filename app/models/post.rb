class Post < ActiveRecord::Base
  has_many :tags, through: :category
  belongs_to :blog
end
