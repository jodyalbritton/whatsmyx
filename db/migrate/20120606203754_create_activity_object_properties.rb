class CreateActivityObjectProperties < ActiveRecord::Migration
  def change
    create_table :activity_object_properties do |t|

      t.timestamps
    end
  end
end
