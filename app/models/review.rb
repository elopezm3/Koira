class Review < ApplicationRecord
  belongs_to :purchase
  belongs_to :user
  validates :calification, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
  validates :purchase, presence: true
  validates :user, presence: true
end
