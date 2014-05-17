class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_access
    if session[:user_id].nil?
      redirect_to login_path, flash: { warning: 'Please login.' }
    end
  end

  def authenticate_super_admin_access
    authenticate_access
    if !session[:user_id].nil?
      if User.find( session[:user_id] ).group != 'superadmin'
        redirect_to login_path, flash: { warning: 'User access level too low.' }
      end
    end
  end

  private

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
