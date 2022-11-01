class Campsite < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
