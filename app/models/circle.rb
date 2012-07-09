class Circle < ActiveRecord::Base
  
  attr_accessible :description, :name, :user_tokens
  
  
  belongs_to :author, :class_name => 'User'
  
  has_many :relationships
  has_many :users, :through => :relationships
  
   attr_reader :user_tokens
  
  def user_tokens=(ids)
    self.user_ids = ids.split(",")
  end
end
