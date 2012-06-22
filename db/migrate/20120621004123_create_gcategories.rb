class CreateGcategories < ActiveRecord::Migration
  def change
    create_table :gcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
