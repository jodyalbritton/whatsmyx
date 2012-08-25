class HomeController < ApplicationController
   before_filter :load

  def load
    
  
   
    
  end
   
    def index
     @user = User.find(current_user)
     @scopes = current_user.circles.map { |r| [r.name, r.id] }
     @scopes.push(["Public", "0"])
     following = current_user.follows
     following_ids = following.collect{|f| f.followable_id}
     mycircles =  current_user.relationships.collect{|g| g.circle_id}
     mycircles.push(0)
     aoi = Activity.where(:target_type => ["Post", "Stat", "Pactivity", "Meal"], :scope => mycircles).includes(:target, :user, :target => :user)
     @activities = aoi.where(:user_id => [following_ids, current_user] ).page(params[:page])
 
     @curr_membs = @user.memberships.includes(:group)
     @stat = current_user.stats.build 
     @pactivity = current_user.pactivities.build 
     @meal = current_user.meals.build
    
     @post = current_user.posts.build
     
   
     
   
 
  
    
  end
end
