class ApplicationController < ActionController::Base
   protect_from_forgery
   rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_path, :alert => exception.message
   
    @global_messages = Recipient.where(:user_id => current_user)
    @global_notifications = current_user.notifications
 
  end
end
