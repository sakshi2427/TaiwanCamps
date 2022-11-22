require 'rails_helper'
# require "spec_helper"

RSpec.describe User, type: :model do
   it "requires a name to be valid" do
    user = User.new(first_name: nil)

    expect(user).not_to be_valid
  end
end
