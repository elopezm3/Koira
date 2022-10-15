class Category < ApplicationRecord
  has_many :product_or_services
  validates :name, presence: true
end
