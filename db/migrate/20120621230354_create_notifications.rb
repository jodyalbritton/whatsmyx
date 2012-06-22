class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string  :target_type
      t.integer :target_id
      t.integer :recipient_id
      t.integer :user_id
      t.string  :action
      t.boolean :unread, :default => true

      t.timestamps
    end
    add_index :notifications, :user_id
    add_index :notifications, :target_type
    add_index :notifications, :target_id
  end
end
