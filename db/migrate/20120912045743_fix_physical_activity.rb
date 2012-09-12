class FixPhysicalActivity < ActiveRecord::Migration
  def up
   rename_column :physical_activities, :pactivity_type_id, :physical_activity_type_id
  
  end

  def down
  end
end
