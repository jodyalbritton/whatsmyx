class Dgoal < ActiveRecord::Base
  belongs_to :user
  attr_accessible :calories, :carbs, :fat, :protein
end
