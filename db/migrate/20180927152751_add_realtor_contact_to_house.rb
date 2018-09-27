class AddRealtorContactToHouse < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :realtor_contact, :string
  end
end
