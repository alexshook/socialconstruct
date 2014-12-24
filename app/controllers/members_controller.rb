class MembersController < ApplicationController
  before_action :admins_only, only: [ :new, :create ]

  def new
    @member = Member.new
  end

  def create
    @member = Member.new member_params
    invitation_token = Invitation.find_by_token params[:invited]
    if invitation_token
      @member.save
      redirect_to dashboard_path
    else
      raise "Sorry, you must be invited to become a member of SocialConstruct."
    end
  end

  private
  def admins_only
    current_member.admin?
  end

  def member_params
    params.require(:member).permit(:email, :password, :password_confirmation, :role, :first_name, :last_name)
  end

end
