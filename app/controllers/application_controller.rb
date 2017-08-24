class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_user
  
  private

  def get_user
    @user = current_user
    @is_logged_in = user_signed_in?

  end
  
end
