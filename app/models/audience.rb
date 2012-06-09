class Audience < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :activity
  belongs_to :relation
end
