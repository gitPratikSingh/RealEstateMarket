class AddRelateToUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :house_hunters do |t|
      t.belongs_to :user, index:true
    end
  end
end
