require 'test_helper'

class FoodStallsControllerTest < ActionDispatch::IntegrationTest
  test "should get food_stall_categories" do
    get food_stalls_food_stall_categories_url
    assert_response :success
  end

end
