class MentalActivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :mental_activity_type
  attr_accessible :date, :duration, :time, :value, :name, :mental_activity_type_id, :category, :scope
  
  include Likeable
end
