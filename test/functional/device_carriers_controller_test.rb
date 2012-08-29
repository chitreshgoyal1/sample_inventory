require 'test_helper'

class DeviceCarriersControllerTest < ActionController::TestCase
  setup do
    @device_carrier = device_carriers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_carriers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_carrier" do
    assert_difference('DeviceCarrier.count') do
      post :create, device_carrier: @device_carrier.attributes
    end

    assert_redirected_to device_carrier_path(assigns(:device_carrier))
  end

  test "should show device_carrier" do
    get :show, id: @device_carrier.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device_carrier.to_param
    assert_response :success
  end

  test "should update device_carrier" do
    put :update, id: @device_carrier.to_param, device_carrier: @device_carrier.attributes
    assert_redirected_to device_carrier_path(assigns(:device_carrier))
  end

  test "should destroy device_carrier" do
    assert_difference('DeviceCarrier.count', -1) do
      delete :destroy, id: @device_carrier.to_param
    end

    assert_redirected_to device_carriers_path
  end
end
