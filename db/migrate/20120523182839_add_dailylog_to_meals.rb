class AddDailylogToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :dailylog_id, :integer
  end
end
