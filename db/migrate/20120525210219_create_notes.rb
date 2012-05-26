class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.text :content
      t.integer :user_id
      t.date :date
      t.timestamps
    end
  end
end