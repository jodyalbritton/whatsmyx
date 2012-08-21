class AddScopeToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :scope, :integer, :default => 0
  end
end
