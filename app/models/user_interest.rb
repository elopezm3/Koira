class UserInterest < ApplicationRecord
  belongs_to :user
  belongs_to :interest
  validates :user, presence: true
  validates :interest, presence: true
end
