require 'file_size_validator'
class Post < ActiveRecord::Base
   
   attr_accessible :text, :user, :parent_id, :scope, :date, :attachment
   
   belongs_to :user
   has_many :activities, :as => :target, dependent: :destroy
 
   validates_presence_of :text
   
    
   
  
    include Likeable
 
   opinio_subjectum
   
   mount_uploader :attachment, AttachmentUploader
   
  
   validates :attachment, 
    :file_size => { 
      :maximum => 0.5.megabytes.to_i 
    } 
      
  
    
       
 
   
    
            

end
