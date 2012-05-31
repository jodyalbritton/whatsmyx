class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :fname
      t.string :lname
      t.date :dob
      t.text :about
      t.string :country
      t.string :state
      t.string :zip
      t.string :relstat
      t.string :gender
      t.timestamps
    end
    add_index :profiles, :user_id
  end
end