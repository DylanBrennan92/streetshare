class ApplicationController < ActionController::Base

    before_action :set_current_user

    def set_current_user
        #@secret = ENV['DATABASE_PASSWORD']
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id]) 
        else
        
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "Sign in to perform this action" if Current.user.nil?
    end
end
