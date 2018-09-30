class Admin < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :email, presence: true
  validates :email, format: {with: /\A[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z/, message: "only allows valid email addresses."}

end
