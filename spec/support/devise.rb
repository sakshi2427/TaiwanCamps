require_relative './controller_macros'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.include Devise::Test::ControllerHelpers, :type => :controller
  config.include Warden::Test::Helpers
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
  config.extend ControllerMacros, :type => :controller
end
