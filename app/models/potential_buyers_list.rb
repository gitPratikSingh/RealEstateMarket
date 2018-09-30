class PotentialBuyersList < ApplicationRecord
  has_many :house_hunters
  belongs_to :house
end
