class CreateTies < ActiveRecord::Migration
  def change
    create_table :ties do |t|
      t.integer  :contact_id
      t.integer  :circle_id
      t.timestamps
    end
  end
end
