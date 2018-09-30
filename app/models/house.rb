class House < ApplicationRecord
  has_many :inquiries
  has_many :house_hunters, through: :inquiries
  has_one :potential_buyers_list
  # belongs_to :realtor
  belongs_to :interest_list, optional: true
  belongs_to :real_estate_company

  scope :list_price, -> (list_price) { where list_price: list_price }
  scope :square_footage, -> (square_footage) { where square_footage: square_footage }
  scope :location, -> (location) { where("location like ?", "#{location}%")}
  scope :year_built, -> (year_built) { where(year_built: year_built)}
  scope :num_of_floors, -> (num_of_floors) { where(num_of_floors: num_of_floors)}
end
