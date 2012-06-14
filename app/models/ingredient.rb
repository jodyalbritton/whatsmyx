class Ingredient < ActiveRecord::Base
  
  attr_accessible :meal, :what_food, :food_id, :servings, :serving_size, :user_id, :date, :mcategory_id
  
  #validations
  
    
  #relations
  belongs_to :user
  belongs_to :mcategory

 
end
