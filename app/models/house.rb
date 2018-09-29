class House < ApplicationRecord
  has_many :inquiries
  has_many :house_hunters
  has_one :potential_buyers_list
  belongs_to :interest_list, optional: true
  belongs_to :real_estate_company
end
