module ApplicationHelper
  module SessionsHelper

    def logged_in?
      # if current_user
      #   true
      # else
      #   false
      # end

      # current_user ? true : false
      !!current_user      
    end

    # Helpers / Methods used in other actions
    def current_user
      if session[:current_user_id] 
        @current_user ||= User.find(session[:current_user_id])
      end
      # Memoization - Cheap Caching.
      
      # if @current_user
      #   return @current_user
      # else
      #   @current_user = User.find(session[:current_user_id])
      # end

      # The first time this is called
      # it will populate @current_user
      # the second time this is called in the same
      # request cycle
      # because @current_user already exists
      # it will just return it
      # if @current_user doesn't exist, it will populate 
      # it.
    end

    def login(user)
      session[:current_user_id] = @user.id
    end
  end
end
