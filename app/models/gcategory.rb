class Gcategory < ActiveRecord::Base
  attr_accessible :name
  has_many :groupsra
end
