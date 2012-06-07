class CreateRelations < ActiveRecord::Migration
  def change
      create_table :relations do |t|
      t.integer  "actor_id"
      t.string   "type"
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "sender_type"
      t.string   "receiver_type"
      t.string   "ancestry"
      t.timestamps
    end
  end
end
