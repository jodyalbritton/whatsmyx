class CreateActivityObjectAudiences < ActiveRecord::Migration
  def change
    create_table :activity_object_audiences do |t|

      t.timestamps
    end
  end
end
