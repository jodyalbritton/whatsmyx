class AddServingToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :serving_size, :decimal
  end
end
