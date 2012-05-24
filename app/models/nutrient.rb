class Nutrient < ActiveRecord::Base
    belongs_to :food, :foreign_key => 'ndb', :primary_key => 'ndb'
    has_one :nutr_def, :foreign_key => 'nutr_no', :primary_key => 'nutr_no'
    attr_accessible :id, :ndb, :nutr_no, :nutr_val
end
