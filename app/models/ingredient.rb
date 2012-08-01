class Ingredient < ActiveRecord::Base
  
  attr_accessible :what_food, :food_id, :servings, :serving_size, :user_id, :date, :mcategory_id, :serv_size_id, :meal_id
  
  #validations
  
    
  #relations
  belongs_to :user
  belongs_to :mcategory
  belongs_to :food
  belongs_to :serv_size
  belongs_to :meal
 
    
 
   include Likeable
   
   
   def multiplication_factor
     
     if self.serving_size.nil? 
     multiplication_factor = self.servings
     
     else 
     multiplication_factor = self.servings*self.serving_size/100.0
     end 
     
   end 
   
   def cals
     
     self.food.calories * multiplication_factor
   end
   
   def prot
     
     self.food.protein * multiplication_factor
   end
   
   def fats
     
     self.food.lipid_total * multiplication_factor
   end
   
   def carb
     
     self.food.carbohydrates * multiplication_factor
   end
  
   def fibr
     
     self.food.fiber * multiplication_factor
   end

   def sodi
     
     self.food.sodium * multiplication_factor
   end

   def sugs
     
     self.food.sugar_total * multiplication_factor
   end
   
   def satf
     self.food.fa_sat * multiplication_factor
   end
    
   def chol
     self.food.cholesterol * multiplication_factor
   end
   
   def pots
     self.food.potassium * multiplication_factor
   end 
   
   


 
end
