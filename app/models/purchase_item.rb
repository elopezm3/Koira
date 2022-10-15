class PurchaseItem < ApplicationRecord
  belongs_to :purchase
  belongs_to :product_or_service
  validates :purchase, presence: true
  validates :product_or_service, presence: true
end
