class PostsController < ApplicationController

  before_filter :load

  def load
    @scopes = current_user.circles.map { |r| [r.name, r.id] }
    @posts = Post.order("updated_at DESC")
    @post = Post.new
  end

  def index
 
  end

  def create
  
 
    @post = current_user.posts.build(params[:post])
    
     respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Sucessfully created a Post!' }
        format.js   {
          flash[:notice] = "Successfully created post."
          if @post.parent_id == 0 
          following = Follow.where(["follower_id = ?", (current_user)])
          following_ids = following.collect{|f| f.followable_id}
          mycircles =  current_user.relationships.collect{|g| g.circle_id}
          mycircles.push(0)
          aoi = Activity.where(:target_type => ["Post", "Stat", "Pactivity", "Meal"], :scope => mycircles )
          @activities = aoi.where(:user_id => [following_ids, current_user] ).page params[:page]
    
          else 
           @group = Group.find(@post.parent_id)
           @activities = Kaminari.paginate_array( @group.activities.find(:all)).page(params[:page]).per(5)
          end
         @posts = Post.order("updated_at DESC")
   
        }
      else 
        format.html { redirect_to root_path, notice: 'Opps Something Went Wrong!' }
      end
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
  
  def show 
    @post = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
     @posts = Post.order("updated_at DESC")
  end
end
