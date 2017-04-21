require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get admin_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_activity_url
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post admin_activities_url, params: { activity: { description: @activity.description, dress_code: @activity.dress_code, name: @activity.name, start_day: @activity.start_day, start_hour: @activity.start_hour } }
    end

    assert_redirected_to admin_activity_url(Activity.last)
  end

  test "should show activity" do
    get admin_activity_url(@activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_activity_url(@activity)
    assert_response :success
  end

  test "should update activity" do
    patch admin_activity_url(@activity), params: { activity: { description: @activity.description, dress_code: @activity.dress_code, name: @activity.name, start_day: @activity.start_day, start_hour: @activity.start_hour } }
    assert_redirected_to admin_activity_url(@activity)
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete admin_activity_url(@activity)
    end

    assert_redirected_to admin_activities_url
  end
end
