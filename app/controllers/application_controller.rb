class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action  :check_login

  # def check_login
  #   unless user_signed_in?
  #     redirect_to pages_welcome
  #   # if @user
  #   #   redirect_to user_paths @user
  #   # else
  #   #   redirect_to pages_welcome
  #   # end
  #   end
  # end
end
