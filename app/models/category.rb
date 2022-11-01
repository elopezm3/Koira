class Category < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_category,
                  against: :name.downcase,
                  using: {
                    tsearch: { prefix: true }
                  }

  has_many :product_or_services
  has_one_attached :photo
  validates :name, presence: true
end
