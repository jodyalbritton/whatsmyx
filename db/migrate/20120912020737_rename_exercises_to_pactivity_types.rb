class RenameExercisesToPactivityTypes < ActiveRecord::Migration
  def up
  rename_table :exercises, :pactivity_types
  end

  def down
  end
end
