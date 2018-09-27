class RemoveArtifactFromHouseHunter < ActiveRecord::Migration[5.2]
  def change
    remove_column :house_hunters, :users_id
  end
end
