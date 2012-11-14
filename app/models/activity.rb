.class Activity < ActiveRecord::Base
#feilds accesible 
 attr_accessible :user, :actor_id, :target_id, :activity_type, :created_at, :updated_at, :target_type, :parent_id, :verb, :scope, :tag_list

#relations for the activity   
  belongs_to :user
  belongs_to :target, :polymorphic => true
  has_and_belongs_to_many :tags
  has_many :replies, :class_name => "Post", :foreign_key => "reply_to_id"
  has_many :notifications, dependent: :destroy
  default_scope :order => 'activities.created_at DESC'
  self.per_page = 10
  after_create :create_notifications
  serialize :tag_list
  #Flatten, generate and process tags.
  

  after_commit :process_tags
 
  def to_partial_path() 
    "activities/#{target_type.downcase}" 
  end
  
  def create_notifications
   self.user.audience.each do |f|
    self.notifications << Notification.new(:user_id => f.id )
  end 
  end
  
  def self.total_on(date)
    where("date(created_at) = ?",date).count
  end
 

  
  private
  

  def process_tags
    TAG_PROCESSOR.push(:activity_id => self.id)
  end
  
end
