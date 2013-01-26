require 'test_helper'

class MentalActivitiesControllerTest < ActionController::TestCase
  setup do
    @mental_activity = mental_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mental_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mental_activity" do
    assert_difference('MentalActivity.count') do
      post :create, mental_activity: { date: @mental_activity.date, duration: @mental_activity.duration, time: @mental_activity.time, value: @mental_activity.value }
    end

    assert_redirected_to mental_activity_path(assigns(:mental_activity))
  end

  test "should show mental_activity" do
    get :show, id: @mental_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mental_activity
    assert_response :success
  end

  test "should update mental_activity" do
    put :update, id: @mental_activity, mental_activity: { date: @mental_activity.date, duration: @mental_activity.duration, time: @mental_activity.time, value: @mental_activity.value }
    assert_redirected_to mental_activity_path(assigns(:mental_activity))
  end

  test "should destroy mental_activity" do
    assert_difference('MentalActivity.count', -1) do
      delete :destroy, id: @mental_activity
    end

    assert_redirected_to mental_activities_path
  end
end
