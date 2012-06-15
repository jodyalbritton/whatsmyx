class CreateAudiences < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.integer :activity_id
      t.integer  :object_id
      t.string   :scope
      t.timestamps
    end
  end
end
