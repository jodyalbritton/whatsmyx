class AddServSizeToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :serv_size_id, :integer
  end
end
