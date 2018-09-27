class Realtor < ApplicationRecord
  belongs_to :real_estate_company, optional: true
  belongs_to :user
end
