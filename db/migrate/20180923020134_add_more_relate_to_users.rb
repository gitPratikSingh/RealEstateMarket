class AddMoreRelateToUsers < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :house_hunters, :users
  end
end
