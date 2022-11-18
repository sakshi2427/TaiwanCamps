require "test_helper"

class CampsitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get campsites_index_url
    assert_response :success
  end

  test "should get show" do
    get campsites_show_url
    assert_response :success
  end
end
