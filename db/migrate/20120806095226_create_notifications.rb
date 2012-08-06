class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :type
      t.references :sender, :polymorphic => true
      t.references :activity, :polymorphic => true
      t.timestamps
    end
  end
end
