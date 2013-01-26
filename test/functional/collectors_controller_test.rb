require 'test_helper'

class CollectorsControllerTest < ActionController::TestCase
  test "should get fitbit" do
    get :fitbit
    assert_response :success
  end

end
