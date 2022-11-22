require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "Associations" do
    before { FactoryBot.build(:Review) }
    it { should belong_to(:campsite) }
    it { should belong_to(:user) }
  end
end
