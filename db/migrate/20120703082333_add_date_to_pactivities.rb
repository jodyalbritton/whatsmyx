class AddDateToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :date, :date
  end
end
