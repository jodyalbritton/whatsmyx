class Pactivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  has_many :activities, :as => :target
  attr_accessible :duration, :name, :exercise_id, :time, :category, :date
  validates_presence_of :duration, :time, :name, :exercise_id, :date
 
  
  include Likeable
  opinio_subjectum

  
  def burned
   
    if self.user.profile.weight > 0 
    burned = (((self.exercise.mets * 3.5 * (self.user.profile.weight  / 4.5359237))/200).round * self.duration)
    end 
    
  end
end
