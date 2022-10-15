class Purchase < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  has_many :purchase_items
end
