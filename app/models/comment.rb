class Comment < ActiveRecord::Base
 has_many :activities, :as => :activity_source
  opinio
end
