class CreateTies < ActiveRecord::Migration
  def change
  create_table "ties", :force => true do |t|
      t.integer  "contact_id"
      t.integer  "relation_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
