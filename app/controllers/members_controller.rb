class MembersController < ApplicationController
  def create
    @member = Member.new member_params
  end

  private
  def member_params
    params.require(:member).permit(:email, :role, :first_name, :last_name)
  end

end
