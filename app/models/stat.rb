class Stat < ActiveRecord::Base
  attr_accessible :name, :stype, :value, :date, :category, :unit, :category_id, :sunit, :stype, :user_id, :stype_id
  belongs_to :user
  belongs_to :category
  paginates_per 5

  include Likeable
 def as_json(options={})
    super(:only => [:date,:value],
       
       
  )
end
  
end