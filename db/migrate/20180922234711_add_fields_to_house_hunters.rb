class AddFieldsToHouseHunters < ActiveRecord::Migration[5.2]
  def change
    add_column :house_hunters, :name, :string
    add_column :house_hunters, :email, :string
    add_column :house_hunters, :phone, :string
    add_column :house_hunters, :preferred_contact, :integer
  end
end
