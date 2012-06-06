class CreateActivityObjectActivities < ActiveRecord::Migration
  def change
    create_table :activity_object_activities do |t|

      t.timestamps
    end
  end
end
