require 'test_helper'

class CompensationsControllerTest < ActionController::TestCase
  setup do
    @compensation = compensations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compensations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compensation" do
    assert_difference('Compensation.count') do
      post :create, compensation: { amount: @compensation.amount, employee_id: @compensation.employee_id, type: @compensation.type }
    end

    assert_redirected_to compensation_path(assigns(:compensation))
  end

  test "should show compensation" do
    get :show, id: @compensation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compensation
    assert_response :success
  end

  test "should update compensation" do
    patch :update, id: @compensation, compensation: { amount: @compensation.amount, employee_id: @compensation.employee_id, type: @compensation.type }
    assert_redirected_to compensation_path(assigns(:compensation))
  end

  test "should destroy compensation" do
    assert_difference('Compensation.count', -1) do
      delete :destroy, id: @compensation
    end

    assert_redirected_to compensations_path
  end
end
