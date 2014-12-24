class Member < ActiveRecord::Base
  enum role: [ :admin, :blogger ]

  has_many :blogs

  has_secure_password

  validates :email, uniqueness: true
end

