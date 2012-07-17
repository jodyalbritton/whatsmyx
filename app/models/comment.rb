class Comment < ActiveRecord::Base
 has_many :activities, :as => :target, dependent: :destroy
  opinio
  paginates_per 5
  include Likeable

end
