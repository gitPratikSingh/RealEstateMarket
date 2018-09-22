class CreateRealtors < ActiveRecord::Migration[5.2]
  def change
    create_table :realtors do |t|
      t.string :email
      t.string :password
      t.string :full_name
      t.string :phone
      t.integer :company_id

      t.timestamps
    end
  end
end
