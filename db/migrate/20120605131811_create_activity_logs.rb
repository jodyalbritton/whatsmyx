class CreateActivityLogs < ActiveRecord::Migration
  def change
    create_table :activity_logs do |t|
      t.integer :author_id
      t.integer :actor_id
      t.integer :action_id
      t.integer :verb_id

      t.timestamps
    end
  end
end
