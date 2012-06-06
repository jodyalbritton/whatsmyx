class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :activity_verb_id
      t.string :channel_id
      t.string :integer
      t.string :ancestry

      t.timestamps
    end
  end
end
