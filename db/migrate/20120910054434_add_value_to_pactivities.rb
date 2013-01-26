class AddValueToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :value, :float
    add_column :pactivities, :calories, :float
  end
end
