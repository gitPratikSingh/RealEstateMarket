class RemoveLastRedundantFieldsFromRoles < ActiveRecord::Migration[5.2]
  def change
    remove_column :realtors, :phone
    remove_column :realtors, :full_name
    remove_column :house_hunters, :name
    remove_column :house_hunters, :phone
  end
end
