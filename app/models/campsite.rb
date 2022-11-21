class Campsite < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :category, :address, :county, :postal_code, :phone
  validates :area, presence: true, allow_blank: true
  validates :name, length: { minimum: 3 }
  validates :description, length: { maximum: 200 }

end
