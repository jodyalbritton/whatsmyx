class ActivitiesController < ApplicationController
 
 

def index
  
    following = Follow.where(["follower_id = ?", @user.id])
    following_ids = following.collect{|f| f.followable_id}
    @activities = Activity.where(:user_id => following_ids).order('created_at DESC').page params[:page]
end

end
