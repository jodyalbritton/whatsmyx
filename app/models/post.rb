class Post < ActiveRecord::Base
   
   attr_accessible :text, :user, :parent_id, :scope, :date
   
   belongs_to :user
   has_many :activities, :as => :target, dependent: :destroy
 
   validates_presence_of :text
   
    
   
  
    include Likeable
 
   opinio_subjectum
   
   
   
  
   
      
  
    
       
 
   
    
            

end
