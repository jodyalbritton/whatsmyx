class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer  :group_id
      t.integer  :member_id
      t.boolean  :active
      t.timestamps
    end
  end
end
