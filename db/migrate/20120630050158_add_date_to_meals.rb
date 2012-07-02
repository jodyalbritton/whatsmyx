class AddDateToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :date, :date
  end
end
