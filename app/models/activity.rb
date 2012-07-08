class Activity < ActiveRecord::Base
#feilds accesible 
 attr_accessible :user, :actor_id, :target_id, :activity_type, :created_at, :updated_at, :target_type, :parent_id, :verb

#relations for the activity   
  belongs_to :user
  belongs_to :target, :polymorphic => true
  
 
  default_scope :order => 'activities.created_at DESC'
  
  def to_partial_path() "activities/#{target_type.downcase}" end
  

end
