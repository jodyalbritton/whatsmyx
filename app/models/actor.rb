class Actor < ActiveRecord::Base
  attr_accessible :activity_object_id, :email, :name, :notify_by_email, :slug, :subject_type
end
