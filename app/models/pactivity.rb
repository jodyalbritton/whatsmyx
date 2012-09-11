class Pactivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  has_many :activities, :as => :target, dependent: :destroy
  attr_accessible :duration, :name, :exercise_id, :time, :category, :date, :scope, :attachment, :value, :calories, :source, :user_id, :verb
  validates_presence_of :date
 
  mount_uploader :attachment, AttachmentUploader
  include Likeable
  

  
    def burned
       if self.calories?
       self.calories 
       elsif self.user.profile.weight? && self.duration?
        
        (((self.exercise.mets * 3.5 * (self.user.profile.weight  / 4.5359237))/200).round * self.duration)
       end 
     end 
   
    
    
    
  
end
