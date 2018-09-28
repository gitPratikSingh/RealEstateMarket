class House < ApplicationRecord
  has_many :inquiries
  has_many :house_hunters
  belongs_to :interest_list, optional: true
  belongs_to :real_estate_company
end
