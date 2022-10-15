class PurchaseItem < ApplicationRecord
  belongs_to :purchase
  belongs_to :product_or_service
end
