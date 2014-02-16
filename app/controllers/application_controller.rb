class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def verify
    if session[:user_id].present?
      true
    else
      redirect_to "/posts"
    end
  end
end
