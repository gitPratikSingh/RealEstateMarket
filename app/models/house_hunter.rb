class HouseHunter < ApplicationRecord
  has_many :inquiries
  validates :name, presence: true
  validates :password, presence: true

  validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "bad format"}
  validates_uniqueness_of :email

  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }

end
