require 'test_helper'

class DeviceBatteriesControllerTest < ActionController::TestCase
  setup do
    @device_battery = device_batteries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_batteries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_battery" do
    assert_difference('DeviceBattery.count') do
      post :create, device_battery: @device_battery.attributes
    end

    assert_redirected_to device_battery_path(assigns(:device_battery))
  end

  test "should show device_battery" do
    get :show, id: @device_battery.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_battery.to_param
    assert_response :success
  end

  test "should update device_battery" do
    put :update, id: @device_battery.to_param, device_battery: @device_battery.attributes
    assert_redirected_to device_battery_path(assigns(:device_battery))
  end

  test "should destroy device_battery" do
    assert_difference('DeviceBattery.count', -1) do
      delete :destroy, id: @device_battery.to_param
    end

    assert_redirected_to device_batteries_path
  end
end
