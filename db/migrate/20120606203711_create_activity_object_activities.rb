class CreateActivityObjectActivities < ActiveRecord::Migration
  def change
    create_table :activity_object_activities do |t|
      t.integer  :activity_id
      t.integer  :activity_object_id
      t.timestamps
      t.string   :object_type
    end
  end
end
