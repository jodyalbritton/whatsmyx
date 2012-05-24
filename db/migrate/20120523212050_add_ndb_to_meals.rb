class AddNdbToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :ndb, :integer
    add_column :meals, :quanity, :integer
    add_column :meals, :units, :string
  end
end