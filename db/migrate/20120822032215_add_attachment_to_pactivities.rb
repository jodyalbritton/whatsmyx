class AddAttachmentToPactivities < ActiveRecord::Migration
  def change
    add_column :pactivities, :attachment, :string
  end
end
