class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :what_food
      t.integer :servings
       t.references :food
      t.integer :serving_size

      t.timestamps
    end
    add_index :ingredients, :food_id
  end
end
