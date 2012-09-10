class CreateFbCollectors < ActiveRecord::Migration
  def change
    create_table :fb_collectors do |t|
      t.references :fitbitaccount
      t.references :user
      t.datetime :last_run
      t.boolean :enabled
      t.boolean :calories_in
      t.boolean :calories_out
      t.boolean :water
      t.boolean :steps
      t.boolean :distance
      t.boolean :floors
      t.boolean :elevation
      t.boolean :minutes_sedentary
      t.boolean :minutes_lightly_active
      t.boolean :minutes_fairly_active
      t.boolean :activity_score
      t.boolean :activity_calories
      t.boolean :time_in_bed
      t.boolean :bed_time
      t.boolean :start_time
      t.boolean :minutes_asleep
      t.boolean :minutes_to_sleep
      t.boolean :sleep_efficiency
      t.boolean :weight
      t.boolean :bmi
      t.boolean :fat

      t.timestamps
    end
    add_index :fb_collectors, :user_id
    add_index :fb_collectors, :fitbitaccount_id
  end
end
