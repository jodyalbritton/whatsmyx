class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :user
      t.references :mcategory
   

      t.timestamps
    end
    add_index :meals, :user_id
    add_index :meals, :mcategory_id
  
  end
end
