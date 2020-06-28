require 'test_helper'

class FavoriteFoodstallsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get favorite_foodstalls_update_url
    assert_response :success
  end

end
