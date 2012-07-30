class Comment < ActiveRecord::Base
 has_many :activities, :as => :target, dependent: :destroy
  opinio
  
  belongs_to :user 
  include Likeable

end
