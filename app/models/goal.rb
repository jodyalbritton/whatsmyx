class Goal < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :category_id, :value
end
