class AddMealToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :meal_id, :integer
  end
end
