require "rails_helper"

RSpec.describe CampsitesController, type: :controller do

  login_user

  # This should return the minimal set of attributes required to create a valid
  # Campsite. As you add validations to Campsite, be sure to adjust the attributes here as well.
  let(:valid_attributes) {
        { name: "Test name!", category: "Test category", description: "This is a test description", address: "Test address", county: "Test county", postcode: "Test postcode", phone: "Test phone", email: "Test email", website: "Test website", user_id: 1 }
    }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
        Campsite.create! valid_attributes
        get :index, params: {}, session: valid_session
        expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
    end
  end
end
