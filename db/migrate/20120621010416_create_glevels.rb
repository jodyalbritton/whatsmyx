class CreateGlevels < ActiveRecord::Migration
  def change
    create_table :glevels do |t|
      t.string :name

      t.timestamps
    end
  end
end
