require 'test_helper'

class DeviceTestsControllerTest < ActionController::TestCase
  setup do
    @device_test = device_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_test" do
    assert_difference('DeviceTest.count') do
      post :create, device_test: @device_test.attributes
    end

    assert_redirected_to device_test_path(assigns(:device_test))
  end

  test "should show device_test" do
    get :show, id: @device_test.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_test.to_param
    assert_response :success
  end

  test "should update device_test" do
    put :update, id: @device_test.to_param, device_test: @device_test.attributes
    assert_redirected_to device_test_path(assigns(:device_test))
  end

  test "should destroy device_test" do
    assert_difference('DeviceTest.count', -1) do
      delete :destroy, id: @device_test.to_param
    end

    assert_redirected_to device_tests_path
  end
end
