class Comment < ActiveRecord::Base
 has_many :activities, :as => :target, dependent: :destroy
  opinio
  
  include Likeable
end
