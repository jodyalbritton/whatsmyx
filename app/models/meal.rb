class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :mcategory
  has_many :ingredients, dependent: :destroy
  has_many :foods, :through => :ingredients
  has_many :activities, :as => :target, dependent: :destroy
  accepts_nested_attributes_for :ingredients
  
  
   attr_accessible :name, :ingredients_attributes, :date, :scope, :attachment
   mount_uploader :attachment, AttachmentUploader
   include Likeable
   opinio_subjectum
   validates_presence_of :name, :date

   
   def cals
   
   ingredients.sum { |ingredient| ingredient.cals }
   
   end
   
   def fats
   
   ingredients.sum { |ingredient| ingredient.fats }
   
   end
   
   def prot
   
   ingredients.sum { |ingredient| ingredient.prot }
   
   end
   
   def sodi
   
   ingredients.sum { |ingredient| ingredient.sodi }
   
   end
   
   
   def sugs
   
   ingredients.sum { |ingredient| ingredient.sugs }
   
   end
   
   def chol
   
   ingredients.sum { |ingredient| ingredient.chol }
   
   end
   
   def carb
   
   ingredients.sum { |ingredient| ingredient.carb }
   
   end
   
   def pots
   
   ingredients.sum { |ingredient| ingredient.pots }
   
   end
   
    def fibr
   
   ingredients.sum { |ingredient| ingredient.fibr }
   
   end
   
   def satf
   
   ingredients.sum { |ingredient| ingredient.satf }
   
   end
   
 
  
end