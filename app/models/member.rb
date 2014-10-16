class Member < ActiveRecord::Base
  enum role: [ :admin, :blogger ]

  has_secure_password validations: false
  # if role is blogger, bypass password
  validates_presence_of :password, on: :create, unless: :blogger?
  validates_confirmation_of :password, if: :password

  validates :email, uniqueness: true
end

