class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer  :activity_verb_id
      t.timestamps
      t.string   :ancestry
      t.integer  :channel_id

      t.timestamps
    end
  end
end
