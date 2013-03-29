class CreateAdminRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.text :role_name

      t.timestamps
    end
  end
end
