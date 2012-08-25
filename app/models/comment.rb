class Comment < ActiveRecord::Base
  has_many :activities, :as => :target, dependent: :destroy
 
  
  belongs_to :user 
  include Likeable

end
