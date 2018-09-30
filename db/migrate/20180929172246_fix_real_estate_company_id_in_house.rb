class FixRealEstateCompanyIdInHouse < ActiveRecord::Migration[5.2]
  def change
    remove_reference :houses, :real_estate_companies
    add_reference :houses, :real_estate_company, foreign_key: true
  end
end
