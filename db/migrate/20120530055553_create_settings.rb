class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.references :user
      t.boolean :acct_enabled, :default => 1

      t.timestamps
    end
    add_index :settings, :user_id
  end
end
