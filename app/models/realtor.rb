class Realtor < ApplicationRecord
  belongs_to :real_estate_company
  belongs_to :user
end
