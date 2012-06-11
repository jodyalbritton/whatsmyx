class Nutrient < ActiveRecord::Base
    #belongs_to :food, :foreign_key => 'ndb', :primary_key => 'ndb'
    has_one :nutr_def, :foreign_key => 'nutr_no', :primary_key => 'nutr_no'
    attr_accessible :id, :ndb, :nutr_no, :nutr_val
    
  def name; nutrdesc; end

  # Number of decimal places to which a nutrient value is rounded.
  def decimals; num_dec; end

  # Units of measure (mg, g, μg, and so on).
  # units

  # Used to sort nutrient records in the same order as various reports produced from SR.
  def order; sr_order; end


end
