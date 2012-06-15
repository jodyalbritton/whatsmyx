class HomeController < ApplicationController
   before_filter :load

  def load

    @posts = Post.all
    @activities = Activity.all
  end
   
    def index
     
     @stat = current_user.stats.build 
    
     @note = current_user.notes.build
     @post = current_user.posts.build
     @checklist = current_user.checklists.build
  
    
  end
end
