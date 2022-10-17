class Purchase < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  has_many :purchase_items
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
end
