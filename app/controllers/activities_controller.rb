class ActivitiesController < ApplicationController
 
 

def index
  
    following = Follow.where(["follower_id = ?", @user.id])
    following_ids = following.collect{|f| f.followable_id}
    @activities_of_interest = Activity.where(:target_type => "Post")
    @activities = @activities_of_interest.where(:user_id => following_ids).order('created_at DESC').page(params[:page]).per(10)
end

end
