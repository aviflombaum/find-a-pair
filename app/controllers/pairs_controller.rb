class PairsController < ApplicationController
  before_action :authentication_required

  def new
  end

  def index
    @pairs = Pair.all
  end

  def create
    @pair = Pair.new
    @pair.topic = params["Topic"]
    @pair.requestor_user_id = current_user.id 

    if @pair.save
      redirect_to "/pairs"
    else
      raise @pair.errors.inspect
    end
  end

  private
    # Strong Params is required only when
      # You are mass assigning data.
      # User.new(params[:user]) # Won't Work
      # User.new(user_params) # Sanitized

    def pair_params
    end
end
