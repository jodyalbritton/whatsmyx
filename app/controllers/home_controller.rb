class HomeController < ApplicationController
    def index
     @stat = current_user.stats.build 
     @meal = current_user.meals.build
     @note = current_user.notes.build
     @checklist = current_user.checklists.build
  end
end
