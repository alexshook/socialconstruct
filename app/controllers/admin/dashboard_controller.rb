class Admin::DashboardController < ApplicationController
  before_action :check_role, only: [ :index ]

  def index
    @member = Member.new
    @invitation = Invitation.new
  end

  private
  def check_role
    redirect_to index_path unless current_member.admin?
  end

end
