class Admin::DashboardController < ApplicationController
  include ApplicationHelper
  def index
    @member = Member.new
  end

end
