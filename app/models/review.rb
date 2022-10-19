class Review < ApplicationRecord
  belongs_to :purchase
  validates :calification, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
  validates :purchase, presence: true
end
