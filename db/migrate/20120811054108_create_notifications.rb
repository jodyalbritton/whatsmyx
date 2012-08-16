class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.references :activity
      t.boolean :seen
      t.references :user

      t.timestamps
    end
    add_index :notifications, :activity_id
    add_index :notifications, :user_id
  end
end
