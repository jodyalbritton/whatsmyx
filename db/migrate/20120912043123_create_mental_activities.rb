class CreateMentalActivities < ActiveRecord::Migration
  def change
    create_table :mental_activities do |t|
      t.references :user
      t.references :mental_activity_type
      t.float :value
      t.date :date
      t.time :time
      t.integer :duration

      t.timestamps
    end
    add_index :mental_activities, :user_id
    add_index :mental_activities, :mental_activity_type_id
  end
end
