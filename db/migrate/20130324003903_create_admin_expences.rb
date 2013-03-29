class CreateAdminExpences < ActiveRecord::Migration
  def change
    create_table :expences do |t|
      t.string :expence_name
      t.date :expence_date
      t.integer :amount
      t.string :given_by_name
      t.string :bill_no
      t.string :place_of_purchase
      t.integer :updated_user_id
      t.string :updated_user_type

      t.timestamps
    end
  end
end
