require_relative './controller_macros'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.include Devise::Test::ControllerHelpers, :type => :controller
  config.include Warden::Test::Helpers
  config.extend ControllerMacros, :type => :controller
end
