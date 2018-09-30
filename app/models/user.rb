class User < ApplicationRecord
  has_one :house_hunter, dependent: :destroy
  has_one :realtor, dependent: :destroy
  has_one :admin

  validates :email, format: {with: /\A[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z/, message: "only allows valid email addresses."}
  validates :phone, format: { with: /\A^(\+?\d{1,2}[\s.-])?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}([\s.-]?x\d+)?$\z/, message: "only allows valid 10-digit phone numbers." }
  validates :name, presence: true
  validates_uniqueness_of :email
  validates :user_type, inclusion: {in: [0,1,2,3]}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
