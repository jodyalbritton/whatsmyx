class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :user
      t.boolean :pending, :default => 1
      t.references :group
      t.boolean :blocked, :default => 0
      t.references :glevel

      t.timestamps
    end
    add_index :memberships, :user_id
    add_index :memberships, :group_id
    add_index :memberships, :glevel_id
  end
end
