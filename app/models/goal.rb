class Goal < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :category_id, :value, :name, :sunit, :modifier
  validates_uniqueness_of :user_id, :scope => [:category_id],:message => "You already have a goal for that!"
   
end
