class ProductOrService < ApplicationRecord
  belongs_to :category
  belongs_to :business
  has_many :purchase_items
end
