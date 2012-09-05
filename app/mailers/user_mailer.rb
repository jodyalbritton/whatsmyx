class UserMailer < ActionMailer::Base
  default :from => "help@whatsmyx.com"
  
  def welcome_email(user)
    mail(:to => user.email, :subject => "Invitation Request Received")
    headers['X-MC-Track'] = "opens, clicks"
    headers['X-MC-GoogleAnalytics'] = "whatsmyx.com"
    headers['X-MC-Tags'] = "welcome"
  end
end