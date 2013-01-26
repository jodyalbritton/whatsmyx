class AddUserToIngredients < ActiveRecord::Migration
  def change
  add_column :ingredients, :user_id, :integer
  add_column :ingredients, :date, :date
  add_column :ingredients, :mcategory_id, :integer
  
  end
end
