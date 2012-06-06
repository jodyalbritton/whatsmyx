class CreateActivityActions < ActiveRecord::Migration
  def change
    create_table :activity_actions do |t|

      t.timestamps
    end
  end
end
