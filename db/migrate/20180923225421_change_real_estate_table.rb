class ChangeRealEstateTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :real_state_companies, :real_state_company_id
    rename_column :real_state_companies, :founding_year, :founded
    remove_column :real_state_companies, :synopsis
    add_column :real_state_companies, :synopsis, :text
    rename_table :real_state_companies, :real_estate_companies
  end
end
