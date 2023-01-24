class PostsController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @post = @group.posts.create(post_params)
    redirect_to group_path(@group)
  end


  def destroy
    @group = Group.find(params[:group_id])
    @post = @group.posts.find(params[:id])
    @post.destroy

    redirect_to group_path(@group), status: :see_other
  end

  private 
  def post_params
    params.require(:post).permit(:title, :body, :posted_by, :category, :image)
  end

  
end
