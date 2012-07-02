class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :name, :slug, :sunit
  has_many :stats
  has_many :goals
  
end
