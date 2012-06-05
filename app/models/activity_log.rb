class ActivityLog < ActiveRecord::Base
  attr_accessible :action_id, :actor_id, :author_id, :verb_id
end
