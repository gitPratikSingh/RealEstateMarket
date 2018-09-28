class RemoveFaultyReferenceInRealtors < ActiveRecord::Migration[5.2]
  def change
    remove_reference :realtors, :real_estate_companies
    add_reference :realtors, :real_estate_company, foreign_key: true
  end
end
