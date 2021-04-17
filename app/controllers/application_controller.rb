class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_current_user
  before_action :authenticate_admin

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_admin
    if @current_user.category == "admin"
      session[:admin_flag] = true
    end
  end
end
