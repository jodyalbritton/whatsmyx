class CreateTies < ActiveRecord::Migration
  def change
    create_table :ties do |t|
      t.references :user
      t.references :circle

      t.timestamps
    end
    add_index :ties, :user_id
    add_index :ties, :circle_id
  end
end
