class HomeController < ApplicationController
   before_filter :load

  def load
    
    @posts = Post.all
   
    
  end
   
    def index
     @scopes = current_user.circles.map { |r| [r.name, r.id] }
     @scopes.push(["Public", "0"])
     following = Follow.where(["follower_id = ?", (current_user)])
     following_ids = following.collect{|f| f.followable_id}
     mycircles =  current_user.relationships.collect{|g| g.circle_id}
     mycircles.push(0)
     aoi = Activity.where(:target_type => ["Post", "Stat", "Pactivity", "Meal"], :scope => mycircles )
     @activities = aoi.where(:user_id => [following_ids, current_user] ).page(params[:page]).per_page(5)
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
