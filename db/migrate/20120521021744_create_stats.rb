class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :name
      t.string :stype
      t.integer :value

      t.timestamps
    end
  end
end
