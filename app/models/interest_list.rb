class InterestList < ApplicationRecord
  belongs_to :house_hunter
  has_many :houses
end
