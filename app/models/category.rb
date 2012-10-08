class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  attr_accessible :name, :slug, :sunit, :tag_list
  has_many :stats
  has_many :goals
  serialize :tag_list
  
  
  before_save :generate_taglist
  
  
  private
  def generate_taglist
     self.tag_list = ([self.name, self.class.to_s]).flatten
  end
end
