class Campsite < ApplicationRecord 
  has_many :reviews, dependent: :destroy 
  # Validations 
  validates :name, presence: true, length: { minimum: 6 } 
  validates :category, presence: true 
  validates :address, presence: true 
  validates :county, presence: true 
  validates :postal_code, presence: true 
  validates :phone, presence: true 
  validates :area, presence: true, allow_blank: true 
  validates :description, length: { maximum: 200 } 
end