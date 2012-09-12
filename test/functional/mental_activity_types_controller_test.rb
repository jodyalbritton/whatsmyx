require 'test_helper'

class MentalActivityTypesControllerTest < ActionController::TestCase
  setup do
    @mental_activity_type = mental_activity_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mental_activity_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mental_activity_type" do
    assert_difference('MentalActivityType.count') do
      post :create, mental_activity_type: { attributes: @mental_activity_type.attributes, name: @mental_activity_type.name, value: @mental_activity_type.value }
    end

    assert_redirected_to mental_activity_type_path(assigns(:mental_activity_type))
  end

  test "should show mental_activity_type" do
    get :show, id: @mental_activity_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mental_activity_type
    assert_response :success
  end

  test "should update mental_activity_type" do
    put :update, id: @mental_activity_type, mental_activity_type: { attributes: @mental_activity_type.attributes, name: @mental_activity_type.name, value: @mental_activity_type.value }
    assert_redirected_to mental_activity_type_path(assigns(:mental_activity_type))
  end

  test "should destroy mental_activity_type" do
    assert_difference('MentalActivityType.count', -1) do
      delete :destroy, id: @mental_activity_type
    end

    assert_redirected_to mental_activity_types_path
  end
end
