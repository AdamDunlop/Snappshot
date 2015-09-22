class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  helper_method :current_user
  
  protected

  def current_user
    # byebug
    @current_user ||= CreateUser.find(session[:create_user_id]) if session[:create_user_id]
  end



end
