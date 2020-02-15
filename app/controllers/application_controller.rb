class ApplicationController < ActionController::Base
  # Ruby Architecture - Can I mix in privately...
  include ApplicationHelper::SessionsHelper

  before_action :current_user
  
  # Action / End point to HTTP Request
  def home
    @magic = "Suprise!!"
  end

end

