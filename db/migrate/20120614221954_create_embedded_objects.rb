class CreateEmbeddedObjects < ActiveRecord::Migration
  def change
    create_table :embedded_objects do |t|
      t.integer  :embeddable_id
      t.string   :embeddable_type
      t.integer  :like_count,          :default => 0

      t.timestamps
    end
  end
end
