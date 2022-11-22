require 'rails_helper'

RSpec.describe User, type: :model do

  # subject {
  # described_class.new(first_name: "Pauline",
  #                     last_name: "Rouger",
  #                     email: "test@test.com",
  #                     password: "123456",)
  # }

  subject { FactoryBot.build(:user) }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it 'is not valid without a first name' do
      subject.first_name = nil
      expect(subject).not_to be_valid
    end

    it "is not valid with a empty first name" do
      subject.first_name = ""
      expect(subject).not_to be_valid
    end

      it 'is not valid without a last name' do
      subject.last_name = nil
      expect(subject).not_to be_valid
    end

    it "is not valid with a empty last name" do
      subject.last_name = ""
      expect(subject).not_to be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with a empty email" do
      subject.email = ""
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with a empty password" do
      subject.password = ""
      expect(subject).not_to be_valid
    end

    # it 'should validate uniqueness of email' do
    #   email1 = FactoryBot.create(:user, email: 'email@blackducksoftware.com')
    #   email2 = FactoryBot.build(:user, email: 'email@blackducksoftware.com' )
    #   should validate_uniqueness_of(:email)
    # end

    describe "Uniqueness" do
      subject { FactoryBot.build(:user) }
      it { should validate_uniqueness_of(:email) }
    end

  end
end
