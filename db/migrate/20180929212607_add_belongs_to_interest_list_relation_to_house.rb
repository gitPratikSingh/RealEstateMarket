class AddBelongsToInterestListRelationToHouse < ActiveRecord::Migration[5.2]
  def change
    change_table :houses do |t|
      t.belongs_to :interest_list, foreign_key: true, optional: true
    end
  end
end
