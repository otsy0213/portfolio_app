module MemberSessionsHelper

  def log_in(member)
    session[:member_id] = member.id
  end

  def current_member
    if session[:member_id]
      @current_member ||= Member.find_by(id: session[:member_id])
    end
  end

  def current_member?(member)
    member == current_member
  end

  def logged_in?
    !current_member.nil?
  end

  def log_out
    session.delete(:member_id)
    @current_member = nil
  end
end
