class SessionsController < ApplicationController

  skip_before_action :authenticate

  def index
    render status: session[:user_id] ? 200 : 403
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
