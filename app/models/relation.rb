class Relation < ActiveRecord::Base
  # attr_accessible :title, :body
  
  
  belongs_to :user

  has_many :relation_permissions, :dependent => :destroy
  has_many :permissions, :through => :relation_permissions

  has_many :ties, :dependent => :destroy
  has_many :contacts, :through => :ties

  has_many :audiences, :dependent => :destroy
  has_many :activities, :through => :audiences

  has_many :activity_object_audiences, :dependent => :destroy
end
