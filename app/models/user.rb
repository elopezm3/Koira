class User < ApplicationRecord
  has_many :user_interests, dependent: :destroy
  has_many :my_purchases, class_name: "Purchase", foreign_key: "buyer_id", dependent: :destroy
  has_many :my_businesses, class_name: "Business", foreign_key: "owner_id", dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true, inclusion: { in: ["admin", "seller", "customer"] }
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
