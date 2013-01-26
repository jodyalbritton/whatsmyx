class CreateDgoals < ActiveRecord::Migration
  def change
    create_table :dgoals do |t|
      t.references :user
      t.float :calories
      t.float :protein
      t.float :fat
      t.float :carbs

      t.timestamps
    end
    add_index :dgoals, :user_id
  end
end
