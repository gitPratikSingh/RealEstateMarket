class ChangePreferredContactToStringInHouseHunter < ActiveRecord::Migration[5.2]
  def change
    change_column :house_hunters, :preferred_contact, :string
  end
end
