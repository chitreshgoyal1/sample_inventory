require 'test_helper'

class DeviceProblemStatusesControllerTest < ActionController::TestCase
  setup do
    @device_problem_status = device_problem_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_problem_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_problem_status" do
    assert_difference('DeviceProblemStatus.count') do
      post :create, device_problem_status: @device_problem_status.attributes
    end

    assert_redirected_to device_problem_status_path(assigns(:device_problem_status))
  end

  test "should show device_problem_status" do
    get :show, id: @device_problem_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_problem_status.to_param
    assert_response :success
  end

  test "should update device_problem_status" do
    put :update, id: @device_problem_status.to_param, device_problem_status: @device_problem_status.attributes
    assert_redirected_to device_problem_status_path(assigns(:device_problem_status))
  end

  test "should destroy device_problem_status" do
    assert_difference('DeviceProblemStatus.count', -1) do
      delete :destroy, id: @device_problem_status.to_param
    end

    assert_redirected_to device_problem_statuses_path
  end
end
