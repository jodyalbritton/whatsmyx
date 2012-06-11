class Ingredient < ActiveRecord::Base
  
  attr_accessible :serving_size, :servings, :what_food, :food_id
  belongs_to :meal
 
end
