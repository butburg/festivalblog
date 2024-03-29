module SessionsHelper
  # Log in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def is_logged_in?
    !current_user.nil?
  end

  def check_if_author?
    is_logged_in? && (current_user.author? || current_user.admin?)
  end

  def check_if_admin?
    check_if_author? && current_user.admin?
  end

  # check the role
  def is_author?
    unless is_logged_in? && (check_if_author?)
      redirect_to root_url, alert: "Access denied."
    end
  end

  # check if admin
  def is_admin?
    unless is_logged_in? && current_user.admin?
      redirect_to :root_url, alert: "Access denied."
    end
  end

  # Logs out the current user
  def log_out
    reset_session
    @current_user = nil
  end
end
