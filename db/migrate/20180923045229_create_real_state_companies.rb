class CreateRealStateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :real_state_companies do |t|
      t.integer :real_state_company_id
      t.string :name
      t.string :website
      t.string :address
      t.integer :size
      t.integer :founding_year
      t.integer :revenue
      t.string :synopsis

      t.timestamps
    end
  end
end
