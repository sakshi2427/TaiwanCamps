require 'rails_helper'

RSpec.describe Campsite, type: :model do
  describe 'Campsite validations' do
    # Here using FactoryBot
    before { FactoryBot.build(:campsite) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:county) }
    it { should validate_presence_of(:postal_code) }
    it { should validate_presence_of(:phone) }
    it { should validate_length_of(:name).is_at_least(6) }
    it { should validate_length_of(:description).is_at_most(200) }
  end
end
