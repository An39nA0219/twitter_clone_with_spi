require "test_helper"

class UserJwtsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_jwts_create_url
    assert_response :success
  end
end
