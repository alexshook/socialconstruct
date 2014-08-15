class SessionsController < ApplicationController
  def new

  end

  def create
    member = Member.find_by params[:email]
    if member && member.authenticate params[:password]
      session[:member_id] = member.id
      redirect_to dashboard_path
    else
      render 'new'
  end

  def destroy
    session[:member_id] = nil
    redirect_to root_path
  end

end
