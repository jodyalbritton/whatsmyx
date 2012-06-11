class Food < ActiveRecord::Base
 attr_accessible :id, :name, :water, :calories, :protein, :lipid_total, :ash, :carbohydrates, :fiber,
                  :sugar_total, :calcium, :iron, :magnesium, :phosphorus, :potassium, :sodium, :zinc, 
                  :copper, :manganese, :selenium, :vit_c, :thiamin, :riboflavin, :niacin, :panto_acid, 
                  :vit_b6, :folate_total, :folic_acid, :food_folate, :folate_dfe, :choline_total, :vit_b12, 
                  :vit_a_iu, :vit_a_rae, :retinol, :alpha_carotene, :beta_carotene, :beta_crypt, :lycopene, 
                  :lut_zea, :vit_e, :vit_d_mcg, :vit_d_iu, :vit_k, :fa_sat, :fa_mono, :fa_poly, :cholesterol, 
                  :weight_1_gms, :weight_1_desc, :weight_2_gms, :weight_2_desc, :refuse_pct, :umd, :user_id
 
   
 
  define_index do
    indexes name
  
   
    end
 end
