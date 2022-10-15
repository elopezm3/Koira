class User < ApplicationRecord
  has_many :user_interests
  has_many :purchases
  has_many :businesses
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :permission_level, presence: true, inclusion: { in: [1, 2, 3] }
  # Permission Level (1=Admin(us), 2=BusinessOwner, 3=Customers)
  validates :birthdate, presence: true
  validate :birthdate_cannot_be_in_future

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def birthdate_cannot_be_in_future
    if birthdate > Date.today
      errors.add(:birthdate, "can't be in the future, be serious")
    end
  end
end
