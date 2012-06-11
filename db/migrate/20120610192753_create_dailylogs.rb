class CreateDailylogs < ActiveRecord::Migration
  def change
    create_table :dailylogs do |t|
      t.date :date
      t.references :user
     

      t.timestamps
    end
  end
end
