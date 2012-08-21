class AddScopeToStats < ActiveRecord::Migration
  def change
    add_column :stats, :scope, :integer, :default => 0
  end
end
