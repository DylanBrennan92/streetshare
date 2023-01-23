class GroupsController < ApplicationController

    def index
        @groups = Group.all
    end
    
    def show
        @group = Group.find(params[:id])
    end
    
    def new 
        @group = Group.new
    end
    
    def create
        @group = Group.new(group_params)
    
    if @group.save
        redirect_to @group
    else
        render :new, status: :unprocessable_entity
        end
    end
    
      def edit
        @group = Group.find(params[:id])
      end
    
      def update
        @group = Group.find(params[:id])
    
        if @group.update(group_params)
          redirect_to @group
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      def destroy
        @group = Group.find(params[:id])
        @group.destroy
    
        redirect_to root_path, notice: "group was successfully deleted"
      end
    
    
      def search
        @groups = Group.where("name ILIKE ?", "%" + params[:q] + "%")
      end
    
      private 
      def group_params
        params.require(:group).permit(:name, :content, :location, :group_owner)
      end

end
