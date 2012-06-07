class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :activity_object_id
      t.text :content
      t.timestamps
    end
  end
end
