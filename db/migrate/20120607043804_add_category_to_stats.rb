class AddCategoryToStats < ActiveRecord::Migration
  def change
    add_column :stats, :category_id, :integer
    add_column :stats, :date, :date
  end
end
