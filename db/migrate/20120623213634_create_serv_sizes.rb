class CreateServSizes < ActiveRecord::Migration
  def change
    create_table :serv_sizes do |t|
      t.string :name
      t.float :value
      t.references :ingredient

      t.timestamps
    end
    add_index :serv_sizes, :ingredient_id
  end
end
