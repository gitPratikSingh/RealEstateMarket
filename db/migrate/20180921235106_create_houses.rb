class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.int :id
      t.int :real_estate_company
      t.string :location
      t.int :square_footage
      t.int :year_built
      t.string :style
      t.int :list_price
      t.int :num_of_floors
      t.boolean :basement
      t.string :current_owner
      t.string :realtor_contact
      t.int :potential_buyers[]

      t.timestamps
    end
  end
end
