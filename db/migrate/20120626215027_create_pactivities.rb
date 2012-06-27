class CreatePactivities < ActiveRecord::Migration
  def change
    create_table :pactivities do |t|
      t.string :name
      t.references :user
      t.references :exercise
      t.float :duration

      t.timestamps
    end
    add_index :pactivities, :user_id
    add_index :pactivities, :exercise_id
  end
end
