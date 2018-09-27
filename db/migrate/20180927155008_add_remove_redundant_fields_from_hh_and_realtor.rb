class AddRemoveRedundantFieldsFromHhAndRealtor < ActiveRecord::Migration[5.2]
  def change
    remove_column :house_hunters, :email
    remove_index :house_hunters, :users_id
    remove_column :realtors, :email
    remove_column :realtors, :password
  end
end
