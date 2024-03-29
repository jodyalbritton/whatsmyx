class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :user
      t.string :privacy_level
      t.boolean :active
      t.text :description

      t.timestamps
    end
  end
end
