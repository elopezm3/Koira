class Business < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_business,
                  against: [:name.downcase, :description.downcase, :type_of_business.downcase],
                  using: {
                    tsearch: { prefix: true }
                  }

  has_many :product_or_services, dependent: :destroy
  has_many_attached :photos
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
  validates :address, presence: true
  validates :owner, presence: true
  validates :description, presence: true
  validates :type_of_business, presence: true, inclusion: { in: ["bar", "restaurant"] }

  def number_of_purchases
    purchases = Purchase.all
    number_purchases = 0
    purchases.each do |purchase|
      purchase_item = purchase.purchase_items.first
      product_or_service = purchase_item.product_or_service
      business = product_or_service.business
      if business == self
        number_purchases += 1
      end
    end
    return number_purchases
  end
end
