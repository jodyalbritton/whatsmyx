class Post < ActiveRecord::Base
   belongs_to :user
   has_many :activities, :as => :target
  attr_accessible :text
 
   opinio_subjectum

end
