require 'test_helper'

class PactivityTypesControllerTest < ActionController::TestCase
  setup do
    @pactivity_type = pactivity_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pactivity_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pactivity_type" do
    assert_difference('PactivityType.count') do
      post :create, pactivity_type: {  }
    end

    assert_redirected_to pactivity_type_path(assigns(:pactivity_type))
  end

  test "should show pactivity_type" do
    get :show, id: @pactivity_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pactivity_type
    assert_response :success
  end

  test "should update pactivity_type" do
    put :update, id: @pactivity_type, pactivity_type: {  }
    assert_redirected_to pactivity_type_path(assigns(:pactivity_type))
  end

  test "should destroy pactivity_type" do
    assert_difference('PactivityType.count', -1) do
      delete :destroy, id: @pactivity_type
    end

    assert_redirected_to pactivity_types_path
  end
end
