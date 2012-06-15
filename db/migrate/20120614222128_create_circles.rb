class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.integer  :author_id
      t.string   :name
      t.text     :description

      t.timestamps
    end
  end
end
