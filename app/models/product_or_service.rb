class ProductOrService < ApplicationRecord
  belongs_to :category
  belongs_to :business
  has_many :purchase_items
  validates :category, presence: true
  validates :price, presence: true
  validates :business, presence: true
  validate :price_cannot_be_negative
  validates :name, presence: true
  validates :description, presence: true

  def price_cannot_be_negative
    if price <= 0
      errors.add(:price, "has to be greater than 0")
    end
  end
end
