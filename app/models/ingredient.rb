class Ingredient < ActiveRecord::Base
  
  attr_accessible :what_food, :food_id, :servings, :serving_size, :user_id, :date, :mcategory_id, :serv_size_id
  
  #validations
  
    
  #relations
  belongs_to :user
  belongs_to :mcategory
  belongs_to :food
  belongs_to :serv_size
    
 validates_presence_of :what_food, :food_id
   include Likeable
 
end
