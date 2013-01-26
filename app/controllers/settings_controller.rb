class SettingsController < ApplicationController
   def edit
     
       @settings = current_user.settings 
    
    
     
   end

  def update
    if @settings.update_attributes(params[:settings])
      flash[:success] = "Settings Updated"
   
    else
      render 'edit'
    end
  end
  def create
     @settings = current_user.settings.build(params[:settings])
  end
  
  def show
    @settings = current_user.settings
  end
end