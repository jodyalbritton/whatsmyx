class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  attr_accessible :read
end
