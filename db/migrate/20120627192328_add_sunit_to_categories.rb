class AddSunitToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :sunit, :string
  end
end
