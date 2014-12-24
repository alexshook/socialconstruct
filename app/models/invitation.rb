class Invitation < ActiveRecord::Base
  has_one :recipient, class_name: 'Member', foreign_key: 'sender_id'
  belongs_to :sender, class_name: 'Member'

  validates_presence_of :recipient_email
end
