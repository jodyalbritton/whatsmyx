class ActivityObjectActivity < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :activity, :dependent => :destroy
  belongs_to :activity_object
end
