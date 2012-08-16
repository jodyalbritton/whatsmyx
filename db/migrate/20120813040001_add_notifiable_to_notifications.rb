class AddNotifiableToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :notifiable, :integer
    add_column :notifications, :notifiable_type, :string
  end
end
