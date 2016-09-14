class SessionsController < ApplicationController

  skip_before_action :authenticate

  def create
    puts "--------#{session[:user_id]}"
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts session[:user_id]
      render json: user
    else
      render status: 403
    end
  end

  def destroy
    session[:user_id] = nil
    render status: 204
  end

end
