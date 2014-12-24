class InvitationMailer < ActionMailer::Base
  default from: "alex@delayedmissives.com"

  def invitation_email(invitation)
    url = 'http://localhost:3000/invited=#{invitation.token}'
    mail to: invitation.recipient_email, subject: "You're Invited to Join SocialConstruct"
  end

end
