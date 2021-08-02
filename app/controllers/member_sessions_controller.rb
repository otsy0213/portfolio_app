class MemberSessionsController < ApplicationController

  def new
  end

  def create
    member = Member.find_by(name: params[:session][:name].downcase)
    if member && member.authenticate(params[:session][:password])
      log_in member
      redirect_to member_path(member.id)
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to apos_path
  end

end
