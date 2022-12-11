class HomeController < ApplicationController
    before_action :auth_user

    def index
    end

    def auth_user
        if session[:user_id] != nil
            #add functionality here later
        end
    end
end
