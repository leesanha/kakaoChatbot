require 'test_helper'

class KakaoControllerTest < ActionController::TestCase
  test "should get keyboard" do
    get :keyboard
    assert_response :success
  end

  test "should get messages" do
    get :messages
    assert_response :success
  end

end
