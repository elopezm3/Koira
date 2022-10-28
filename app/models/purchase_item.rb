class PurchaseItem < ApplicationRecord
  belongs_to :purchase
  belongs_to :product_or_service
  validates :purchase, presence: true
  validates :product_or_service, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
