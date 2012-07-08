class HomeController < ApplicationController
   before_filter :load

  def load

    @posts = Post.all
   
    
  end
   
    def index
     following = Follow.where(["follower_id = ?", (current_user)])
     following_ids = following.collect{|f| f.followable_id}
     @activities_of_interest = Activity.where(:target_type => ["Post", "Stat", "Pactivity"])
     @activities = @activities_of_interest.where(:user_id => [following_ids, current_user]).page(params[:page]).per_page(5)
     @stat = current_user.stats.build 
     @meal = current_user.meals.build
    
     @post = current_user.posts.build

   
     
    respond_to do |format|
    format.js
    format.html # index.html.erb
    format.xml  { render :xml => @activities }
  end
  
    
  end
end
