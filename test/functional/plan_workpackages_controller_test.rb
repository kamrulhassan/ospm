require 'test_helper'

class PlanWorkpackagesControllerTest < ActionController::TestCase
  setup do
    @plan_workpackage = plan_workpackages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_workpackages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_workpackage" do
    assert_difference('PlanWorkpackage.count') do
      post :create, plan_workpackage: { title: @plan_workpackage.title, wp_type: @plan_workpackage.wp_type }
    end

    assert_redirected_to plan_workpackage_path(assigns(:plan_workpackage))
  end

  test "should show plan_workpackage" do
    get :show, id: @plan_workpackage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_workpackage
    assert_response :success
  end

  test "should update plan_workpackage" do
    put :update, id: @plan_workpackage, plan_workpackage: { title: @plan_workpackage.title, wp_type: @plan_workpackage.wp_type }
    assert_redirected_to plan_workpackage_path(assigns(:plan_workpackage))
  end

  test "should destroy plan_workpackage" do
    assert_difference('PlanWorkpackage.count', -1) do
      delete :destroy, id: @plan_workpackage
    end

    assert_redirected_to plan_workpackages_path
  end
end
