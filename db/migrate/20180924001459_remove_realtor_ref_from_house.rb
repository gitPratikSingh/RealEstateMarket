class RemoveRealtorRefFromHouse < ActiveRecord::Migration[5.2]
  def change
    remove_index :houses, column: :realtor_id
    remove_column :houses, :realtor_id
  end
end
