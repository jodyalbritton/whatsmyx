class SettingsController < ApplicationController
   def edit
  end

  def update
    if @settings.update_attributes(params[:settings])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  def create
     @settings = current_user.settings.build(params[:stat])
  end
end