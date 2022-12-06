class HomeController < ApplicationController
    def index
        
        
        #@secret = ENV['DATABASE_PASSWORD']
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            flash[:notice] = "Logged in successfully"  
        else
            flash[:alert] = "Not logged in"
        
        end
    end
end
