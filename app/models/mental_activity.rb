class MentalActivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :mental_activity_type
  has_many :activities, :as => :target, dependent: :destroy
  attr_accessible :date, :duration, :time, :value, :name, :mental_activity_type_id, :category, :scope, :time
  
  include Likeable
end
