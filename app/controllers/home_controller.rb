class HomeController < ApplicationController
    def index
     @stat = current_user.stats.build 
     @meal = current_user.meals.build
     @note = current_user.notes.build
     @new_post = current_user.posts.build
     @checklist = current_user.checklists.build
     @posts = Post.order(:created_at).page(params[:page]).per(5)
  end
end
