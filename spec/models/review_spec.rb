require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'Review validations' do
    # Here using FactoryBot
    before { FactoryBot.build(:user) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:rating) }
    it { should validate_inclusion_of(:rating).in_range(1..5) }
    it { should validate_length_of(:content).is_at_most(200) }
  end

  describe "Review associations" do
    before { FactoryBot.build(:Review) }
    it { should belong_to(:campsite) }
    it { should belong_to(:user) }
  end
end
