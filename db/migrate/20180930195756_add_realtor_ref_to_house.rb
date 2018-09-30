class AddRealtorRefToHouse < ActiveRecord::Migration[5.2]
  def change
    change_table :houses do |t|
      t.belongs_to :realtor, foreign_key: true, optional: true
    end
  end
end
