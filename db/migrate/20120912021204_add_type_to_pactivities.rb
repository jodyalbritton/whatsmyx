class AddTypeToPactivities < ActiveRecord::Migration
  def change
  
    rename_column :pactivities, :exercise_id, :pactivity_type_id
  
  end
end
