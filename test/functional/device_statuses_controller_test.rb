require 'test_helper'

class DeviceStatusesControllerTest < ActionController::TestCase
  setup do
    @device_status = device_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_status" do
    assert_difference('DeviceStatus.count') do
      post :create, device_status: @device_status.attributes
    end

    assert_redirected_to device_status_path(assigns(:device_status))
  end

  test "should show device_status" do
    get :show, id: @device_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_status.to_param
    assert_response :success
  end

  test "should update device_status" do
    put :update, id: @device_status.to_param, device_status: @device_status.attributes
    assert_redirected_to device_status_path(assigns(:device_status))
  end

  test "should destroy device_status" do
    assert_difference('DeviceStatus.count', -1) do
      delete :destroy, id: @device_status.to_param
    end

    assert_redirected_to device_statuses_path
  end
end
