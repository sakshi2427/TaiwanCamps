class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email
  validates_length_of :first_name, :last_name, maximum: 20
  validates_length_of :password, minimum: 6
  validates_format_of :email, with: Devise::email_regexp

end
