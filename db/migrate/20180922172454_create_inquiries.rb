class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.integer :inquiry_id
      t.integer :user_id
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
