class RenamePactivitiesToPhysicalActivities < ActiveRecord::Migration
  def up
  rename_table :pactivities, :physical_activities
  rename_table :pactivity_types, :physical_activity_types
  end

  def down
  end
end
