class ActivityAction < ActiveRecord::Base
  
  belongs_to :actor
  belongs_to :activity_object
end
