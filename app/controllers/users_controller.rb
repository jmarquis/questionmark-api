class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: user, status: 201
    else
      render status: 400
    end
  end

private

  def user_params
    params.permit(:fname, :lname, :email, :password)
  end

end
