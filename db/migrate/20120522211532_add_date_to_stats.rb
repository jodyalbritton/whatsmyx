class AddDateToStats < ActiveRecord::Migration
  def change
    
     add_column :stats, :sunit, :string
  end
end
