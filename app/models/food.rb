class Food < ActiveRecord::Base
   paginates_per 5
   attr_accessible :id, :ndb, :shortdesc
   has_many :nutrients, :foreign_key => 'ndb', :primary_key => 'ndb', :include => 'nutr_def', :order => 'nutr_defs.sr_order'
   has_many :meals
   
 define_index do
    indexes shortdesc
  
   
    end
    
    def as_json(options={})
    super(:only => [:shortdesc],
       
       
  )
end
end

