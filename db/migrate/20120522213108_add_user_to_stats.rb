class AddUserToStats < ActiveRecord::Migration
  def change
    add_column :stats, :user_id, :integer
  end
end