class ModerateController < ApplicationController
   
  def index 
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.where(:confirmed_at == "")
  end
  

end
