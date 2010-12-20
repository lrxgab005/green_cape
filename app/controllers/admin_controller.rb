class AdminController < ActionController::Base
  before_filter :authenticate_user!
  layout "admin"

  def index
    @user_loggedin = current_user.email
  end
  
end
