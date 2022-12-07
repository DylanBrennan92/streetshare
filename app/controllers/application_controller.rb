class ApplicationController < ActionController::Base

    before_action :set_current_user


    def set_current_user
        #@secret = ENV['DATABASE_PASSWORD']
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
            flash[:notice] = "Logged in successfully"  
        else
            flash[:alert] = "Not logged in"
        
        end
    end
end
