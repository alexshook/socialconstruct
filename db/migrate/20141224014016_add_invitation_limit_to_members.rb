class AddInvitationLimitToMembers < ActiveRecord::Migration
  def change
    add_column :members, :invitation_limit, :integer, default: 0
  end
end
