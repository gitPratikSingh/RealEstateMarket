class AddAdminRelateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :admins, :users
  end
end
