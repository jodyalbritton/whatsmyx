class AddModifierToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :modifier, :string
  end
end
