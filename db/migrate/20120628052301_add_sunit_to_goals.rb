class AddSunitToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :sunit, :string
  end
end
