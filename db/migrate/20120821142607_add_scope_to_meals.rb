class AddScopeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :scope, :integer, :default => 0
  end
end
