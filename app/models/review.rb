class Review < ApplicationRecord
  belongs_to :campsite
  belongs_to :user

  validates :content, :rating, presence: true
  validates :rating, :inclusion => 1..5
  validates :content, length: { maximum: 200 }
end
