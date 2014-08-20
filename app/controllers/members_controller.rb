class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new member_params
  end

  private
  def member_params
    params.require(:member).permit(:email, :password, :password_confirmation, :role, :first_name, :last_name)
  end

end
