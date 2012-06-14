class Meal < ActiveRecord::Base
  attr_accessible :date, :name, :ndb, :quanity, :units, :mcategory_id, :ingredients_attributes, :favorite, :fave_name, :what
  
  #validations
  
   
   #relations
    has_many :ingredients, :dependent => :destroy
  
    accepts_nested_attributes_for :ingredients
    
 

  belongs_to :mcategory
  belongs_to :user
  
 
  

end
