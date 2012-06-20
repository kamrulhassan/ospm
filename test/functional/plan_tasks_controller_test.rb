require 'test_helper'

class PlanTasksControllerTest < ActionController::TestCase
  setup do
    @plan_task = plan_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_task" do
    assert_difference('PlanTask.count') do
      post :create, plan_task: { description: @plan_task.description, end_date: @plan_task.end_date, start_date: @plan_task.start_date }
    end

    assert_redirected_to plan_task_path(assigns(:plan_task))
  end

  test "should show plan_task" do
    get :show, id: @plan_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_task
    assert_response :success
  end

  test "should update plan_task" do
    put :update, id: @plan_task, plan_task: { description: @plan_task.description, end_date: @plan_task.end_date, start_date: @plan_task.start_date }
    assert_redirected_to plan_task_path(assigns(:plan_task))
  end

  test "should destroy plan_task" do
    assert_difference('PlanTask.count', -1) do
      delete :destroy, id: @plan_task
    end

    assert_redirected_to plan_tasks_path
  end
end
