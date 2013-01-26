class AddSourceToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :source, :string
  end
end
