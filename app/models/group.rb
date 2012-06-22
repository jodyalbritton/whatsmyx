class Group < ActiveRecord::Base
  attr_accessible :active, :description, :name, :privacy_level, :user, :gcategory_id
  belongs_to :gcategory
  belongs_to :user
  has_many :memberships, dependent: :destroy
  has_many :activities, :foreign_key => :parent_id, dependent: :destroy
  
  
  
  
  validates_presence_of :name, :description
  
  
  
  after_create :create_new_membership
 
 
 
  private
    def create_new_membership
      self.memberships << Membership.new(:user_id => self.user)
    end
end
