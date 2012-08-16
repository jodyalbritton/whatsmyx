class Notification < ActiveRecord::Base
 
  attr_accessible :seen, :user_id, :activity_id
  
  belongs_to :activity
  belongs_to :user
  
  
  
  
end
