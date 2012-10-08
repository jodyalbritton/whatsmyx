class MentalActivityType < ActiveRecord::Base
  attr_accessible :attribs, :name, :value, :category, :tag_list
  
   serialize :tag_list
  
  
  before_save :generate_taglist
  
  private
  def generate_taglist
     self.tag_list = ([self.name, self.class.to_s]).flatten
  end
end
