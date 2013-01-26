class Settings < ActiveRecord::Base
  belongs_to :user
  attr_accessible :acct_enabled
end
