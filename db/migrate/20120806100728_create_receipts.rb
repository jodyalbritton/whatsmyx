class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :notification_id

      t.timestamps
    end
  end
end
