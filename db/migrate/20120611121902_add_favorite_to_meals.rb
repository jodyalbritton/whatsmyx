class AddFavoriteToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :favorite, :boolean
    add_column :meals, :fave_name, :string
  end
end
