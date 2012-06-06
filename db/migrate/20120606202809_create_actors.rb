class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :email
      t.string :slug
      t.string :subject_type
      t.boolean :notify_by_email
      t.integer :activity_object_id

      t.timestamps
    end
  end
end
