class AddWeightToProfiles < ActiveRecord::Migration
  def change
     add_column :profiles, :weight, :float
     add_column :profiles, :height, :float
     add_column :profiles, :waist_circ, :float
     add_column :profiles, :kneck_circ, :float
     add_column :profiles, :shoulders_circ, :float
     add_column :profiles, :chest_circ, :float
     add_column :profiles, :hips_circ, :float
     add_column :profiles, :bicep_circ, :float
     add_column :profiles, :thigh_circ, :float
     add_column :profiles, :calf_circ, :float
     add_column :profiles, :forearm_circ, :float
     
   
  end
end
