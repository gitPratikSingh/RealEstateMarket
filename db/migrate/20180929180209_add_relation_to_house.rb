class AddRelationToHouse < ActiveRecord::Migration[5.2]
  def change
    change_table :potential_buyers_lists do |t|
      t.belongs_to :house, foreign_key: true
    end
  end
end
