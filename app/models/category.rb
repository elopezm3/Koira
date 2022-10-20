class Category < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_category,
                  against: :name.downcase,
                  associated_against: {
                    product_or_services: [:name.downcase, :description.downcase]
                  },
                  using: {
                    tsearch: { prefix: true }
                  } #for businesses i do it manually in the controller since the category, easy

  has_many :product_or_services
  has_one_attached :photo
  validates :name, presence: true
end
