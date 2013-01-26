class AddTagListToPhysicalActivityTypes < ActiveRecord::Migration
  def change
    add_column :physical_activity_types, :tag_list, :string
    add_column :mental_activity_types, :tag_list, :string
    add_column :categories, :tag_list, :string
    add_column :ingredients, :tag_list, :string
  end
end
