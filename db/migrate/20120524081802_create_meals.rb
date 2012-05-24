class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :ndb
      t.integer :quanity
      t.string :units
      t.date :date
      t.string :mcategory_id
      t.string :integer
      t.integer :user_id

      t.timestamps
    end
  end
end
