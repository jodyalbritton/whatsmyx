class AddTimeToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :time, :time
  end
end
