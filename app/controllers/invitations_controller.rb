class InvitationsController < ApplicationController
  def create
    invitation = Invitation.new invitation_params
    invitation.sender_id = current_user.id
    invitation.token = invitation.generate_token
    if @invitation.save
      InvitationMailer.invitation_email(invitation).deliver
    end
  end

  private
  def invitation_params
    params.require(:invitation).permit(:recipient_email, :token)
  end

end
