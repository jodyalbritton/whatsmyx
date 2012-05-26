class Note < ActiveRecord::Base
  attr_accessible :content, :name
  belongs_to :user
end
