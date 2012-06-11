class Dailylog < ActiveRecord::Base
  attr_accessible :date, :user
  
  
  belongs_to :user
  has_many :meals
end
