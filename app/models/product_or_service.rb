class ProductOrService < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_product_or_service,
                  against: [:name.downcase, :description.downcase],
                  using: {
                    tsearch: { prefix: true }
                  }
  belongs_to :category
  belongs_to :business
  has_many :purchase_items
  has_many_attached :photos
  validates :category, presence: true
  validates :price, presence: true
  validates :business, presence: true
  validate :price_cannot_be_negative
  validates :name, presence: true
  validates :description, presence: true
  validates :type_product_service, presence: true, inclusion: { in: ["product", "service"] }
  validates :type_of_product, inclusion: { in: ["food", "drink", ""] }
  def price_cannot_be_negative
    if price <= 0
      errors.add(:price, "has to be greater than 0")
    end
  end
end
