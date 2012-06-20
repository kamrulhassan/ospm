require 'test_helper'

class PlanDeliverablesControllerTest < ActionController::TestCase
  setup do
    @plan_deliverable = plan_deliverables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_deliverables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_deliverable" do
    assert_difference('PlanDeliverable.count') do
      post :create, plan_deliverable: { description: @plan_deliverable.description, end_date: @plan_deliverable.end_date, start_date: @plan_deliverable.start_date }
    end

    assert_redirected_to plan_deliverable_path(assigns(:plan_deliverable))
  end

  test "should show plan_deliverable" do
    get :show, id: @plan_deliverable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_deliverable
    assert_response :success
  end

  test "should update plan_deliverable" do
    put :update, id: @plan_deliverable, plan_deliverable: { description: @plan_deliverable.description, end_date: @plan_deliverable.end_date, start_date: @plan_deliverable.start_date }
    assert_redirected_to plan_deliverable_path(assigns(:plan_deliverable))
  end

  test "should destroy plan_deliverable" do
    assert_difference('PlanDeliverable.count', -1) do
      delete :destroy, id: @plan_deliverable
    end

    assert_redirected_to plan_deliverables_path
  end
end
