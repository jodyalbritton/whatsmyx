class AddGategoryToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :gcategory_id, :integer
  end
end
