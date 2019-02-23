class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def logged_in_user
    return if logged_in?
    redirect_to login_path
  end

  def correct_user
    return if @user || current_user
  end

end
