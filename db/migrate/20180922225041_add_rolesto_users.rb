class AddRolestoUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :realtor_foreign_key, :integer
    add_column :users, :house_hunter_foreign_key, :integer
    add_column :users, :admin_foreign_key, :integer
  end
end
