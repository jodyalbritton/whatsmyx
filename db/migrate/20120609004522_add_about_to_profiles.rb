class AddAboutToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :about, :text
    add_column :profiles, :dob, :date
    add_column :profiles, :fname, :string
    add_column :profiles, :lname, :string
    add_column :profiles, :name, :string
  end
end
