require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get vodny_plan" do
    get pages_vodny_plan_url
    assert_response :success
  end

end
