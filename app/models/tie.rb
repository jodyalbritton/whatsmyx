class Tie < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :contact, :counter_cache => true

  has_one :sender,   :through => :contact
  has_one :receiver, :through => :contact

  belongs_to :relation
  has_many :permissions, :through => :relation

end
