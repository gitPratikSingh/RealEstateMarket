class RemoveUsersIdFieldFromAdmin < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :users_id
  end
end
