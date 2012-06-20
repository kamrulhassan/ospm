require 'test_helper'

class PlanMilestonesControllerTest < ActionController::TestCase
  setup do
    @plan_milestone = plan_milestones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_milestones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_milestone" do
    assert_difference('PlanMilestone.count') do
      post :create, plan_milestone: { date: @plan_milestone.date, description: @plan_milestone.description, means_of_verificaiton: @plan_milestone.means_of_verificaiton, name: @plan_milestone.name }
    end

    assert_redirected_to plan_milestone_path(assigns(:plan_milestone))
  end

  test "should show plan_milestone" do
    get :show, id: @plan_milestone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_milestone
    assert_response :success
  end

  test "should update plan_milestone" do
    put :update, id: @plan_milestone, plan_milestone: { date: @plan_milestone.date, description: @plan_milestone.description, means_of_verificaiton: @plan_milestone.means_of_verificaiton, name: @plan_milestone.name }
    assert_redirected_to plan_milestone_path(assigns(:plan_milestone))
  end

  test "should destroy plan_milestone" do
    assert_difference('PlanMilestone.count', -1) do
      delete :destroy, id: @plan_milestone
    end

    assert_redirected_to plan_milestones_path
  end
end
