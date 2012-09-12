class CreateMentalActivityTypes < ActiveRecord::Migration
  def change
    create_table :mental_activity_types do |t|
      t.string :name
      t.string :attributes
      t.integer :value

      t.timestamps
    end
  end
end
