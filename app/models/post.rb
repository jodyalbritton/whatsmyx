class Post < ActiveRecord::Base
   
   attr_accessible :text, :user
   
   belongs_to :user
   has_many :activities, :as => :target
  
    include Likeable
 
   opinio_subjectum

end
