class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content
  
   opinio_subjectum

end
