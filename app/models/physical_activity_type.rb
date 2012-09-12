class PhysicalActivityType < ActiveRecord::Base
   attr_accessible :code, :mets, :category, :name
  
   has_many :physical_activities
end
