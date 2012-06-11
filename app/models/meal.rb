class Meal < ActiveRecord::Base
  attr_accessible :date, :mcategory_id, :name, :ndb, :quanity, :units, :user_id
  has_many :foods, :foreign_key => 'ndb', :primary_key => 'ndb', :include => 'nutrients'
  belongs_to :mcategory
  belongs_to :user
  belongs_to :dailylog
end
