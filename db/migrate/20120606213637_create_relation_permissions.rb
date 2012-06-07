class CreateRelationPermissions < ActiveRecord::Migration
  def change
    create_table :relation_permissions do |t|
      t.integer  "relation_id"
      t.integer  "permission_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
