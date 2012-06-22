class Note < ActiveRecord::Base
  attr_accessible :content, :name, :user, :date
  belongs_to :user
  
    validates_presence_of :content
end
