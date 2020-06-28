require 'test_helper'

class RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get recommendations_update_url
    assert_response :success
  end

end
