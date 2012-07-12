class AddScopeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :scope, :integer
  end
end
