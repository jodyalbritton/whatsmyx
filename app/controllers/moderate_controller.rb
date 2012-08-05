class ModerateController < ApplicationController
  before_filter :authenticate_user!
  def index 
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.where(:confirmation_sent_at => nil)
    @current_users = User.all
  end
  

end
