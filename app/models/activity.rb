class Activity < ActiveRecord::Base
  attr_accessible :activity_verb_id, :ancestry, :channel_id, :integer
  
  
   has_ancestry
   belongs_to :activity_verb
   has_many :audiences, :dependent => :destroy
   has_many :relations, :through => :audiences
   
   
    has_many :activity_object_activities,
           :dependent => :destroy
    has_many :activity_objects,
           :through => :activity_object_activities





   validates_presence_of :author_id, :user_author_id, :owner_id, :relations
end
