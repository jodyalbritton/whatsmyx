class Food < ActiveRecord::Base
 attr_accessible :id, :name, :water, :calories, :protein, :lipid_total, :ash, :carbohydrates, :fiber,
                  :sugar_total, :calcium, :iron, :magnesium, :phosphorus, :potassium, :sodium, :zinc, 
                  :copper, :manganese, :selenium, :vit_c, :thiamin, :riboflavin, :niacin, :panto_acid, 
                  :vit_b6, :folate_total, :folic_acid, :food_folate, :folate_dfe, :choline_total, :vit_b12, 
                  :vit_a_iu, :vit_a_rae, :retinol, :alpha_carotene, :beta_carotene, :beta_crypt, :lycopene, 
                  :lut_zea, :vit_e, :vit_d_mcg, :vit_d_iu, :vit_k, :fa_sat, :fa_mono, :fa_poly, :cholesterol, 
                  :weight_1_gms, :weight_1_desc, :weight_2_gms, :weight_2_desc, :refuse_pct, :user_id, :slugr
 
 
  has_many :ingredients
  has_many :meals, :through => :ingredients
  has_many :weights, :primary_key => 'ndb', :foreign_key => 'ndb'
  has_one :food_det, :primary_key => 'ndb', :foreign_key => 'ndb'
  
  extend FriendlyId
  
  
  def self.tokens(query)
    foods = where("name like ?", "%#{query}%")
    if foods.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      foods
    end
  end

  def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
    tokens.split(',')
  end
  
 end
