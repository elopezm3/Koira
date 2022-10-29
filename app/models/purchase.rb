class Purchase < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  has_many :purchase_items
  has_many :reviews
  validates :buyer, presence: true
  validates :date, presence: true
  validate :date_cannot_be_in_past
  validates :time, presence: true
  validates :user_name, presence: true
  validates :phone, presence: true
  validates :number_of_people, presence: true, comparison: { greater_than: 0 }

  def date_cannot_be_in_past
    if date < Date.today
      errors.add(:date, "can't be in the past, be serious")
    end
  end

  def total_price
    items = self.purchase_items
    total_price = 0
    items.each do |item|
      individual_price = item.product_or_service.price
      quantity = item.quantity
      total_price += individual_price * quantity
    end
    return total_price
  end
end
