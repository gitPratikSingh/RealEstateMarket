require 'uri'

class RealEstateCompany < ApplicationRecord
  has_many :realtors

  validates :name, presence: true
  validates :website, format: { with: URI::regexp(%w(http https)), :message => "can't be invalid URL"}
  validates :address, presence: true
  validates :size, presence: true
  validates :founded, presence: true, numericality: true
  validates :revenue, presence: true, numericality: true
  validates :synopsis, presence: true



end
