class AddRefsToRealtor < ActiveRecord::Migration[5.2]
  def change
    add_reference :realtors, :user, foreign_key: true
    add_reference :realtors, :real_estate_companies, foreign_key: true
  end
end
