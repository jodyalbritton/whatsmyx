class Post < ActiveRecord::Base
   
   attr_accessible :text, :user, :parent_id, :audience_member_tokens
   
   belongs_to :user
   has_many :activities, :as => :target
   
   has_many :audiences
   has_many :users, through: :audiences
   
    
   attr_reader :audience_member_tokens
  
    include Likeable
 
   opinio_subjectum
   
   
   
  
   
      
  
    
       
 
   
    
            

end
