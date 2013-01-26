class AddCategoryToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :value, :integer
    add_column :goals, :category_id, :integer
  end
end
