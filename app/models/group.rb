class Group < ActiveRecord::Base
  resourcify
  attr_accessible :active, :description, :name, :privacy_level, :user, :gcategory_id, :avatar
  belongs_to :gcategory
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :activities, :foreign_key => :parent_id, dependent: :destroy
  
  
  
   has_attached_file :avatar, 
          :styles => { :medium => "300x300>", 
          :thumb => "64x64>",
          :mini => "32x32>" },
          :default_url =>"/assets/missing_:style.png"
  
  validates_presence_of :name, :description
  
  
  
  after_create :create_new_membership
  
 
 
 
  private
    def create_new_membership
      self.memberships << Membership.new(:user_id => self.user)
    end
end
