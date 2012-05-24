class Stat < ActiveRecord::Base
  attr_accessible :name, :stype, :value, :date, :category, :unit
  belongs_to :user
  belongs_to :dailylog
  def as_json(options={})
    super(:only => [:date,:value],
       
       
  )
end
end
