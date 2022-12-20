class GroupController < ApplicationController

    def index
    end

    def show
    end

    def create
        @group = Group.new(group_params)

        @group.user_id = session[:user_id]

end
