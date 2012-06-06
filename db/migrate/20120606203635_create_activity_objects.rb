class CreateActivityObjects < ActiveRecord::Migration
  def change
    create_table :activity_objects do |t|

      t.timestamps
    end
  end
end
