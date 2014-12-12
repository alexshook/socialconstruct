class Blog < ActiveRecord::Base
  has_many :posts
  has_many :categories, through: :posts
  belongs_to :member
end
