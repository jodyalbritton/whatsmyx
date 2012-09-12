class AddNameToMentalActivities < ActiveRecord::Migration
  def change
    add_column :mental_activities, :name, :string
    add_column :mental_activities, :scope, :integer
    add_column :mental_activities, :verb, :string
    add_column :mental_activities, :source, :string
    add_column :mental_activities, :category, :string
    add_column :mental_activities, :attachment, :string
  end
end
