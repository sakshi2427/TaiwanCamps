class Campsite < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :category, :address, :county, :postal_code, :phone, presence: true
  validates :area, presence: true, allow_blank: true
  validates :name, length: { minimum: 6 }
  validates :description, length: { maximum: 200 }

end
