require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get indexs" do
    get :indexs
    assert_response :success
  end

end
