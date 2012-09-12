class AddTimeToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :created_at, :datetime
    add_column :exercises, :updated_at, :datetime
  end
end
