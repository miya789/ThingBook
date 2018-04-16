class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_current_user
  before_action :authenticate_super_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_super_user
    if @current_user.id == 11
      session[:super_user_flag] = true
    end
  end
end
