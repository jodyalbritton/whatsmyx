class Meal < ActiveRecord::Base
  attr_accessible :date, :name, :ndb, :quanity, :units, :ingredients_attributes, :favorite, :fave_name
  
    has_many :ingredients, :dependent => :destroy
  
  accepts_nested_attributes_for :ingredients

  belongs_to :mcategory
  belongs_to :user
  belongs_to :dailylog
end
