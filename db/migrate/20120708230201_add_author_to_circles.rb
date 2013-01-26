class AddAuthorToCircles < ActiveRecord::Migration
  def change
    add_column :circles, :author_id, :integer
  end
end
