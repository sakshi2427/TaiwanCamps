class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, length: { maximum: 20 }
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: Devise::email_regexp }

end
