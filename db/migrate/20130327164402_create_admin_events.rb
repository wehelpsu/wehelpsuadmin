class CreateAdminEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :place
      t.date :date
      t.integer :budget
      t.references :user
      t.string :status

      t.timestamps
    end
  end
end
