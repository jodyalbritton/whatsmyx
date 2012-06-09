class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :text
 
   opinio_subjectum

end
