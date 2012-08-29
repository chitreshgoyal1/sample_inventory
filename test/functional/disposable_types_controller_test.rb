require 'test_helper'

class DisposableTypesControllerTest < ActionController::TestCase
  setup do
    @disposable_type = disposable_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disposable_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disposable_type" do
    assert_difference('DisposableType.count') do
      post :create, disposable_type: @disposable_type.attributes
    end

    assert_redirected_to disposable_type_path(assigns(:disposable_type))
  end

  test "should show disposable_type" do
    get :show, id: @disposable_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disposable_type.to_param
    assert_response :success
  end

  test "should update disposable_type" do
    put :update, id: @disposable_type.to_param, disposable_type: @disposable_type.attributes
    assert_redirected_to disposable_type_path(assigns(:disposable_type))
  end

  test "should destroy disposable_type" do
    assert_difference('DisposableType.count', -1) do
      delete :destroy, id: @disposable_type.to_param
    end

    assert_redirected_to disposable_types_path
  end
end
