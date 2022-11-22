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

  # subject { FactoryBot.build(:user) }

  # describe "validations" do

  #   it "is valid with valid attributes" do
  #     expect(subject).to be_valid
  #   end

  #   # testing shoulda-matchers
  #   it { should validate_presence_of(:first_name) }
  #   it { is_expected.to validate_presence_of(:name) }

  #   it 'is not valid without a first name' do
  #     subject.first_name = nil
  #     expect(subject).not_to be_valid
  #   end

  #   it "is not valid with a empty first name" do
  #     subject.first_name = ""
  #     expect(subject).not_to be_valid
  #   end

  #     it 'is not valid without a last name' do
  #     subject.last_name = nil
  #     expect(subject).not_to be_valid
  #   end

  #   it "is not valid with a empty last name" do
  #     subject.last_name = ""
  #     expect(subject).not_to be_valid
  #   end

  #   it "is not valid without an email" do
  #     subject.email = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid with a empty email" do
  #     subject.email = ""
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid without a password" do
  #     subject.password = nil
  #     expect(subject).to_not be_valid
  #   end

  #   it "is not valid with a empty password" do
  #     subject.password = ""
  #     expect(subject).not_to be_valid
  #   end
  # end
end
