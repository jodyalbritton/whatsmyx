class AddAttachmentToStats < ActiveRecord::Migration
  def change
    add_column :stats, :attachment, :string
  end
end
