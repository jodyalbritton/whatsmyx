class CreateMcategories < ActiveRecord::Migration
  def change
    create_table :mcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
