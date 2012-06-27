class AddCategoryToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :category, :string
  end
end
