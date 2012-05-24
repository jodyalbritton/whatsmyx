class Mcategory < ActiveRecord::Base
  attr_accessible :name
  has_many :meals
end
