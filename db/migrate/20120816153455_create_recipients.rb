class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.references :message
      t.references :user

      t.timestamps
    end
    add_index :recipients, :message_id
    add_index :recipients, :user_id
  end
end
