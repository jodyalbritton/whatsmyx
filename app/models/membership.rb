class Membership < ActiveRecord::Base
  
  attr_accessible :user_id, :group_id, :glevel_id
  belongs_to :user
  belongs_to :group
  belongs_to :glevel
  attr_accessible :blocked, :pending
end
