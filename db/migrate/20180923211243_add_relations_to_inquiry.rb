class AddRelationsToInquiry < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :user_id
    remove_column :inquiries, :inquiry_id
    change_table :inquiries do |t|
      t.belongs_to :house, foreign_key: true
      t.belongs_to :house_hunter, foreign_key: true
    end
  end
end
