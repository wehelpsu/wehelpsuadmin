class CreateAdminFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :user_name
      t.date :funded_date
      t.integer :amount
      t.references :user
      t.integer :updated_user_id
      t.string :updated_user_type

      t.timestamps
    end
  end
end
