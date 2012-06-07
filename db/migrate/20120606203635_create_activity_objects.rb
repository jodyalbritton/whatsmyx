class CreateActivityObjects < ActiveRecord::Migration
  def change
    create_table :activity_objects do |t|
      t.timestamps
      t.string   :object_type, :limit => 45
      t.integer  :like_count,                :default => 0
      t.integer  :channel_id
    end
  end
end
