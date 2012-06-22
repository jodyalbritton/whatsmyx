class HomeController < ApplicationController
   before_filter :load

  def load

    @posts = Post.all
    following = Follow.where(["follower_id = ?", (current_user)])
    following_ids = following.collect{|f| f.followable_id}
    @activities = Activity.where(:user_id => [following_ids, current_user]).order('created_at DESC')
  end
   
    def index
     
     @stat = current_user.stats.build 
     @ingredient = current_user.ingredients.build
     @note = current_user.notes.build
     @post = current_user.posts.build

     @checklist = current_user.checklists.build
  
    
  end
end
