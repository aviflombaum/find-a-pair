class UsersController < ApplicationController

  # GET /register - New User Action
  def new 

  end

  # POST /users - Create the User Action
  def create
    @user = User.new
    @user.email = params[:email]
    @user.save

    redirect_to "/login"
  end

end
