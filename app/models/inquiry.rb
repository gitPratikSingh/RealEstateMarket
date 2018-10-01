class Inquiry < ApplicationRecord
  belongs_to :house, optional: true
  belongs_to :house_hunter

  validates :subject, presence: true
  validates :message, presence: true, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
end
