class SessionsController < ApplicationController

  skip_before_action :authenticate

  def index
    if session[:user_id].present?
      user = User.find(session[:user_id])
      render status: 200, json: user
    else
      render status: 403
    end
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render status: 201, json: user
    else
      render status: 403
    end
  end

  def destroy
    session[:user_id] = nil
    render status: 204
  end

end
