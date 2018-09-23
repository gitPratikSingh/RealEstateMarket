class AddRefsToHouse < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :house_id
    remove_column :houses, :company_id
    remove_column :houses, :realtor_contact
    remove_column :houses, :potential_buyers
    add_reference :houses, :real_estate_companies, foreign_key: true
    add_reference :houses, :realtor, foreign_key: true
  end
end
