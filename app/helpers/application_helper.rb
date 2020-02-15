module ApplicationHelper
  module SessionsHelper
    # Helpers / Methods used in other actions
    def current_user
      if session[:current_user_id] 
        @current_user = User.find(session[:current_user_id])
      end
    end

    def login(user)
      session[:current_user_id] = @user.id
    end
  end
end
