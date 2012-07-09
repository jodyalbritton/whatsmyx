class Post < ActiveRecord::Base
   
   attr_accessible :text, :user, :parent_id
   
   belongs_to :user
   has_many :activities, :as => :target
   
   belongs_to :circle 
   
    
   
  
    include Likeable
 
   opinio_subjectum
   
   
   
  
   
      
  
    
       
 
   
    
            

end
