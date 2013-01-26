class ServSize < ActiveRecord::Base
  has_many :ingredients
  attr_accessible :name, :value 
  
end
