class PairsController < ApplicationController
  before_action :authentication_required

  def new
  end

  def index
    @pairs = Pair.by_status(:open)
  end

  def show
    @pair = Pair.find(params[:id])  
  end

  def update
    @pair = Pair.find(params[:id])

    if @pair.accepted_by(current_user)
      redirect_to @pair
    else
      render :show
    end
  end 

  def create
    @pair = Pair.new
    @pair.title = params["title"]
    @pair.description = params["description"]
    @pair.requestor_user_id = current_user.id 

    if @pair.save
      redirect_to "/pairs"
    else
      render :new
    end
  end

  private
    # Strong Params is required only when
      # You are mass assigning data from params
      # User.new(params) # Stop you.
      # params.require(:user).permit(:name, :email)

      # @user.update({:name => "Avi", :email => "avi@flatironschool.com"})


      # User.new(params[:user]) # Won't Work
      # User.new(user_params) # Sanitized

    def pair_params
    end
end
