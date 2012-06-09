class Permission < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_many :relation_permissions, :dependent => :destroy
  has_many :relations, :through => :relation_permissions
end
