class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :house_id
      t.integer :company_id
      t.string :location
      t.integer :square_footage
      t.integer :year_built
      t.string :style
      t.integer :list_price
      t.integer :num_of_floors
      t.boolean :basement
      t.string :current_owner
      t.string :realtor_contact
      t.string :potential_buyers

      t.timestamps
    end
  end
end
