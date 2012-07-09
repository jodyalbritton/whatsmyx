class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :circle
  # attr_accessible :title, :body
end
