class AddScopeToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :scope, :integer
  end
end
