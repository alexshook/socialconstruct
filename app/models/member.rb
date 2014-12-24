class Member < ActiveRecord::Base
  enum role: [ :admin, :blogger ]

  has_many :blogs
  has_many :invitations
  has_many :sent_invitations, class_name: 'Invitation', foreign_key: 'sender_id'
  has_secure_password

  validates :email, uniqueness: true

end

