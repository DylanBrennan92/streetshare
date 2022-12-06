class HomeController < ApplicationController
    def index
        flash[:notice] = "Logged in successfully"
        flash[:alert] = "Invalid email or password"
        @secret = ENV['DATABASE_PASSWORD']
    end
end
