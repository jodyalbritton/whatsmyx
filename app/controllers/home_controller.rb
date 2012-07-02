class HomeController < ApplicationController
   before_filter :load

  def load

    @posts = Post.all
    following = Follow.where(["follower_id = ?", (current_user)])
    following_ids = following.collect{|f| f.followable_id}
    @activities = Activity.where(:user_id => [following_ids, current_user]).order('created_at DESC').page params[:page]
  end
   
    def index
     
     @stat = current_user.stats.build 
     @meal = current_user.meals.build
     @note = current_user.notes.build
     @post = current_user.posts.build

     @checklist = current_user.checklists.build
     
    respond_to do |format|
    format.js
    format.html # index.html.erb
    format.xml  { render :xml => @activities }
  end
  
    
  end
end
