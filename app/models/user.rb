class User < ApplicationRecord
  has_many :user_interests
  has_many :purchases
  has_many :businesses
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :permission_level, presence: true, inclusion: { in: [1, 2, 3] }
  # Permission Level (1=Admin(us), 2=BusinessOwner, 3=Customers)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
