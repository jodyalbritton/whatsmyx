class FbCollectorsController < ApplicationController
  def show 
    
    @fb_collector = current_user.fb_collector
    
  end
  def edit
    @fb_collector = current_user.fb_collector
  end
  
  def update
    @fb_collector = current_user.fb_collector
     if @fb_collector.update_attributes(params[:fb_collector])
       redirect_to edit_registration_path(current_user)
     end
  end
end
