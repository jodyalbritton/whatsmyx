class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.references :user
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :circles, :user_id
  end
end
