class Campsite < ApplicationRecord 
  has_many :reviews, dependent: :destroy 
  validates :name, :category, :address, :county, :postal_code, :phone, presence: true 
  validates :area, presence: true, allow_blank: true 
  validates :name, length: { minimum: 6 } 
  validates :description, length: { maximum: 200 } 
  # Logging the creation of a new campsite 
  after_create :log_creation 
  private 
  def log_creation 
    Rails.logger.info "Campsite created: #{self.name}, ID: #{self.id}" 
  rescue StandardError => e 
    Rails.logger.error "Error logging campsite creation: #{e.message}\n#{e.backtrace.join("\n")}" 
  end 
end