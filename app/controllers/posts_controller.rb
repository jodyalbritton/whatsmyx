class PostsController < ApplicationController

  before_filter :load

  def load
    @posts = Post.all
    @post = Post.new
  end

  def index
  end

  def create
  
 
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:notice] = "Successfully created post."
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
