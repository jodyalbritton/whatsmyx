class Stat < ActiveRecord::Base
  attr_accessible :name, :stype, :value, :date, :category, :unit, :category_id
  belongs_to :user
  belongs_to :category

  def as_json(options={})
    super(:only => [:date,:value],
       
       
  )
end
end
