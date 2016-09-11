class SessionsController < ApplicationController

  skip_before_filter :authenticate

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else
      render status: 400
    end
  end

  def destroy
    session[:user_id] = nil
    render status: 204
  end

end
