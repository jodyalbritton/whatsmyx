class ActivityObject < ActiveRecord::Base
  
  
  
  has_many :activity_object_audiences, :dependent => :destroy
  has_many :relations, :through => :activity_object_audiences

  has_many :activity_object_activities, :dependent => :destroy
  has_many :activities, :through => :activity_object_activities

  has_many :received_actions,
           :class_name => "ActivityAction",
           :dependent  => :destroy,
           :autosave   => true
  has_many :followers,
           :through => :received_actions,
           :source  => :actor,
           :conditions => { 'activity_actions.follow' => true }

end
