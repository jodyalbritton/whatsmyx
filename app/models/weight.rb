class Weight < ActiveRecord::Base
  attr_accessible :ndb, :gm_wgt, :msre_desc, :amount, :seq
  
  belongs_to :food
end
