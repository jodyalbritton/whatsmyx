class AddCategoryToMentalActivityTypes < ActiveRecord::Migration
  def change
    add_column :mental_activity_types, :category, :string
  end
end
