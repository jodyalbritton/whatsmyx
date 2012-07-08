class AddPostToTags < ActiveRecord::Migration
  def change
    add_column :tags, :post, :integer
  end
end
