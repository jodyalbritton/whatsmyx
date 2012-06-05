class HomeController < ApplicationController
   before_filter :load

  def load
    @mposts = Mpost.all
   
  end
   
    def index
     @stat = current_user.stats.build 
     @meal = current_user.meals.build
     @note = current_user.notes.build
     @mpost = current_user.mposts.build
     @checklist = current_user.checklists.build
    
  end
end
