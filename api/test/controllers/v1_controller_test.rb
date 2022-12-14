require "test_helper"

class V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get ::todos" do
    get v1_::todos_url
    assert_response :success
  end
end
