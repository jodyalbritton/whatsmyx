class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer  :author_id
      t.string   :name
      t.string   :privacy_level

      t.timestamps
    end
  end
end
