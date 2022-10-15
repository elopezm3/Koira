class PurchaseItem < ApplicationRecord
  belongs_to :purchase
  belongs_to :product_or_service
  validates :purchase, presence: true
  validates :product_or_service, presence: true
  validates :date, presence: true
  validate :date_cannot_be_in_past

  def date_cannot_be_in_past
    if date < Date.today
      errors.add(:date, "can't be in the past, be serious")
    end
  end
end
