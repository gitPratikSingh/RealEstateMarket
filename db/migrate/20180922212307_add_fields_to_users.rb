class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :integer
    add_column :users, :phone, :string
  end
end
