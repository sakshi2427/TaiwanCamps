class Review < ApplicationRecord
  belongs_to :campsite
  belongs_to :user

  validates :content, :rating, presence: true
end
