class AddIndexToFoods < ActiveRecord::Migration
  def change
 
    add_index :foods, :slug, unique: true
  end
end
