class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :name
      t.string :stype
      t.string :value

      t.timestamps
    end
  end
end
