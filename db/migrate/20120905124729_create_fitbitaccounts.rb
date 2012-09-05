class CreateFitbitaccounts < ActiveRecord::Migration
  def change
    create_table :fitbitaccounts do |t|
      t.references :user
      t.string :request_token
      t.string :request_secret
      t.string :access_token
      t.string :access_secret
      t.string :verifier
      t.string :fb_user_id

      t.timestamps
    end
    add_index :fitbitaccounts, :user_id
  end
end
