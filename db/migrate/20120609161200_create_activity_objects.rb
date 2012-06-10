class CreateActivityObjects < ActiveRecord::Migration
  def change
    create_table :activity_objects do |t|
      t.references :activity

      t.timestamps
    end
    add_index :activity_objects, :activity_id
  end
end
