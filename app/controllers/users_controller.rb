class UsersController < ApplicationController

  # GET /register - New User Action
  def new 
    if session[:current_user_id]
      redirect_to "/", :notice => "Already logged in!"
    end
  end

  # POST /users - Create the User Action
  def create
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]

    if @user.save
      redirect_to "/login"
    else
      render :new
    end
  end

end
