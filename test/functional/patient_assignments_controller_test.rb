require 'test_helper'

class PatientAssignmentsControllerTest < ActionController::TestCase
  setup do
    @patient_assignment = patient_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_assignment" do
    assert_difference('PatientAssignment.count') do
      post :create, patient_assignment: @patient_assignment.attributes
    end

    assert_redirected_to patient_assignment_path(assigns(:patient_assignment))
  end

  test "should show patient_assignment" do
    get :show, id: @patient_assignment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_assignment.to_param
    assert_response :success
  end

  test "should update patient_assignment" do
    put :update, id: @patient_assignment.to_param, patient_assignment: @patient_assignment.attributes
    assert_redirected_to patient_assignment_path(assigns(:patient_assignment))
  end

  test "should destroy patient_assignment" do
    assert_difference('PatientAssignment.count', -1) do
      delete :destroy, id: @patient_assignment.to_param
    end

    assert_redirected_to patient_assignments_path
  end
end
