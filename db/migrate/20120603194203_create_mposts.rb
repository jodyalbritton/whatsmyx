class CreateMposts < ActiveRecord::Migration
  def change
    create_table :mposts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
    add_index :mposts, :user_id
  end
end
