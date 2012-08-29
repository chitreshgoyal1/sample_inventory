require 'test_helper'

class DisposablesControllerTest < ActionController::TestCase
  setup do
    @disposable = disposables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disposables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disposable" do
    assert_difference('Disposable.count') do
      post :create, disposable: @disposable.attributes
    end

    assert_redirected_to disposable_path(assigns(:disposable))
  end

  test "should show disposable" do
    get :show, id: @disposable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disposable.to_param
    assert_response :success
  end

  test "should update disposable" do
    put :update, id: @disposable.to_param, disposable: @disposable.attributes
    assert_redirected_to disposable_path(assigns(:disposable))
  end

  test "should destroy disposable" do
    assert_difference('Disposable.count', -1) do
      delete :destroy, id: @disposable.to_param
    end

    assert_redirected_to disposables_path
  end
end
