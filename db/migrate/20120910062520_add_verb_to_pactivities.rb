class AddVerbToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :verb, :string
  end
end
