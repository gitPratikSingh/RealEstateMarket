class House < ApplicationRecord
  has_many :inquiries
  has_many :house_hunters, through: :inquiries
  has_one :potential_buyers_list
  # belongs_to :realtor
  belongs_to :interest_list, optional: true
  belongs_to :real_estate_company
  validates :location, presence: true
  validates :square_footage, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :year_built,  length: { is: 4 }, :numericality => { :greater_than_or_equal_to => 0 }
  validates :style, presence: true
  validates :list_price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :num_of_floors, :numericality => { :greater_than_or_equal_to => 0 }
  validates :basement, presence: true
  validates :current_owner, presence: true

  scope :list_price, -> (list_price) { where list_price: list_price }
  scope :square_footage, -> (square_footage) { where square_footage: square_footage }
  scope :location, -> (location) { where("location like ?", "#{location}%")}
  scope :year_built, -> (year_built) { where(year_built: year_built)}
  scope :num_of_floors, -> (num_of_floors) { where(num_of_floors: num_of_floors)}
end
