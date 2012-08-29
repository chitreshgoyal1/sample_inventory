require 'test_helper'

class DeviceProblemsControllerTest < ActionController::TestCase
  setup do
    @device_problem = device_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_problem" do
    assert_difference('DeviceProblem.count') do
      post :create, device_problem: @device_problem.attributes
    end

    assert_redirected_to device_problem_path(assigns(:device_problem))
  end

  test "should show device_problem" do
    get :show, id: @device_problem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_problem.to_param
    assert_response :success
  end

  test "should update device_problem" do
    put :update, id: @device_problem.to_param, device_problem: @device_problem.attributes
    assert_redirected_to device_problem_path(assigns(:device_problem))
  end

  test "should destroy device_problem" do
    assert_difference('DeviceProblem.count', -1) do
      delete :destroy, id: @device_problem.to_param
    end

    assert_redirected_to device_problems_path
  end
end
