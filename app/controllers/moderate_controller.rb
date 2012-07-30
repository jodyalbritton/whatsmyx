class ModerateController < ApplicationController
  def index 
    @users = User.where(:confirmed_at == nil)
  end
  

end
