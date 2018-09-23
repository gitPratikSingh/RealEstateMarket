class RemoveDeadKeysFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :realtor_foreign_key
    remove_column :users, :house_hunter_foreign_key
    remove_column :users, :admin_foreign_key
  end
end
