class AddMtimeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :mtime, :string
    add_column :meals, :date, :date
    add_column :meals, :mcategory_id, :integer
  end
end