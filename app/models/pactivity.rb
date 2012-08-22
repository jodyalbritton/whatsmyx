class Pactivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise
  has_many :activities, :as => :target, dependent: :destroy
  attr_accessible :duration, :name, :exercise_id, :time, :category, :date, :scope, :attachment
  validates_presence_of :duration, :time, :name, :exercise_id, :date
 
  mount_uploader :attachment, AttachmentUploader
  include Likeable
  opinio_subjectum

  
  def burned
   
    if self.user.profile.weight > 0 
    burned = (((self.exercise.mets * 3.5 * (self.user.profile.weight  / 4.5359237))/200).round * self.duration)
    end 
    
  end
end
