class Inquiry < ApplicationRecord
  belongs_to :house
  belongs_to :house_hunter
end
