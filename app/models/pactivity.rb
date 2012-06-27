class Pactivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  attr_accessible :duration, :name, :exercise_id, :time
end
