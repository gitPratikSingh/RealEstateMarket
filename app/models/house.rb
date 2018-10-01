class House < ApplicationRecord
  has_many :inquiries
  has_many :house_hunters, through: :interest_lists
  has_one :potential_buyers_list
  belongs_to :interest_list, optional: true
  belongs_to :real_estate_company
  validates :location, presence: true
  validates :square_footage, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :year_built,  length: { is: 4 }, :numericality => { :greater_than_or_equal_to => 0 }
  validates :style, presence: true
  validates :list_price, :numericality => { :greater_than_or_equal_to => 0 }
  validates :num_of_floors, :numericality => { :greater_than_or_equal_to => 1 }
  validates :basement, presence: true
  validates :current_owner, presence: true

end
