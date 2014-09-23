class Admin::DashboardController < ApplicationController
  def index
    @member = Member.new
  end

end
