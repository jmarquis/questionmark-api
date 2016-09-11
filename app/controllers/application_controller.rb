class ApplicationController < ActionController::API

  before_action :authenticate

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
    return render status: 403 unless current_user
  end

end
