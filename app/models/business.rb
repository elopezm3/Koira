class Business < ApplicationRecord
  has_many :product_or_services
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
  validates :address, presence: true
  validates :latitude, presence: true
  validates :name, presence: true
  validates :owner, presence: true
  validates :description, presence: true
end
