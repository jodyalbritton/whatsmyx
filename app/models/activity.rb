class Activity < ActiveRecord::Base
 attr_accessible :user, :target_id, :activity_type, :created_at, :updated_at, :target_type

   
 belongs_to :user
  belongs_to :target, :polymorphic => true

end
