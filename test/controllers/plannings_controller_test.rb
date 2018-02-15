require 'test_helper'

class PlanningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planning = plannings(:one)
  end

  test "should get index" do
    get plannings_url
    assert_response :success
  end

  test "should get new" do
    get new_planning_url
    assert_response :success
  end

  test "should create planning" do
    assert_difference('Planning.count') do
      post plannings_url, params: { planning: { declined_reason: @planning.declined_reason, excluded_reason: @planning.excluded_reason, postphoned_date: @planning.postphoned_date, postphoned_reason: @planning.postphoned_reason, scheduled_datetime: @planning.scheduled_datetime, scheduled_interviewer: @planning.scheduled_interviewer, scheduled_location: @planning.scheduled_location, status: @planning.status } }
    end

    assert_redirected_to planning_url(Planning.last)
  end

  test "should show planning" do
    get planning_url(@planning)
    assert_response :success
  end

  test "should get edit" do
    get edit_planning_url(@planning)
    assert_response :success
  end

  test "should update planning" do
    patch planning_url(@planning), params: { planning: { declined_reason: @planning.declined_reason, excluded_reason: @planning.excluded_reason, postphoned_date: @planning.postphoned_date, postphoned_reason: @planning.postphoned_reason, scheduled_datetime: @planning.scheduled_datetime, scheduled_interviewer: @planning.scheduled_interviewer, scheduled_location: @planning.scheduled_location, status: @planning.status } }
    assert_redirected_to planning_url(@planning)
  end

  test "should destroy planning" do
    assert_difference('Planning.count', -1) do
      delete planning_url(@planning)
    end

    assert_redirected_to plannings_url
  end
end
