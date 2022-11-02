class Interest < ApplicationRecord
  has_many :user_interests, dependent: :destroy
  validates :name, presence: true
end
