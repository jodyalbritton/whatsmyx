class CreateTies < ActiveRecord::Migration
  def change
    create_table :ties do |t|

      t.timestamps
    end
  end
end
