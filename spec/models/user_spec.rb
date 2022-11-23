require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'User validations' do
    # Here using FactoryBot
    before { FactoryBot.build(:user) }

    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_length_of(:first_name).is_at_most(20) }
    it { should validate_length_of(:last_name).is_at_most(20) }
    it { should validate_length_of(:password).is_at_least(6) }
    it { should allow_value("email@address.foo").for(:email) }
    it { should_not allow_value("foo").for(:email) }
  end
end
