class AddAttachmentToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :attachment, :string
  end
end
