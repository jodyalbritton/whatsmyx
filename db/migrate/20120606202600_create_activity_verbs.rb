class CreateActivityVerbs < ActiveRecord::Migration
  def change
    create_table :activity_verbs do |t|
      t.string   :name,       :limit => 45
      t.timestamps
    end
  end
end
