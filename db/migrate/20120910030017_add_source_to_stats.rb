class AddSourceToStats < ActiveRecord::Migration
  def change
    add_column :stats, :source, :string
  end
end
