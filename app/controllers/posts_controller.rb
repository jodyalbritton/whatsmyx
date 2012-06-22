class PostsController < ApplicationController

  before_filter :load

  def load
    @posts = Post.order("updated_at DESC")
    @post = Post.new
  end

  def index
 
  end

  def create
  
 
    @post = current_user.posts.build(params[:post])
    if @post.save
    flash[:notice] = "Successfully created post."
    if params[:date] 
    @group = Group.find(params[:group])
    @group_activities = @group.activities.find(:all)
    else 
    following = Follow.where(["follower_id = ?", (current_user)])
    following_ids = following.collect{|f| f.followable_id}
    @activities = Activity.where(:user_id => [following_ids, current_user]).order('created_at DESC')
    end
    @posts = Post.order("updated_at DESC")
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Successfully updated post."
        @posts = Post.order("updated_at DESC")
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
     @posts = Post.order("updated_at DESC")
  end
end
