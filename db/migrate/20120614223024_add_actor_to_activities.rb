class AddActorToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :actor_id, :integer
    add_column :activities, :object_id, :integer
    add_column :activities, :parent_id, :integer
    add_column :activities, :verb, :string
  end
end
