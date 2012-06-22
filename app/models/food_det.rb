class FoodDet < ActiveRecord::Base
  attr_accessible :ndb, :longdesc
  
   belongs_to :food, :foreign_key => 'ndb', :primary_key => 'ndb'
end