class PhysicalActivityType < ActiveRecord::Base
   attr_accessible :code, :mets, :category, :name, :tag_list
  
   has_many :physical_activities
   serialize :tag_list
  
  
  before_save :generate_taglist
  
  private
  def generate_taglist
     self.tag_list = ([self.name, self.class.to_s]).flatten
  end
end
