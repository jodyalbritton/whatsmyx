class HomeController < ApplicationController
   before_filter :load

  def load

    @posts = Post.all
   
  end
   
    def index
     @stat = current_user.stats.build 
     @meal = current_user.meals.build
     @note = current_user.notes.build
     @post = current_user.posts.build
     @checklist = current_user.checklists.build
   
      @services = {
        :posts => Post.find(:all),
        :stats => Stat.find(:all)
      }
     
    
  end
end
