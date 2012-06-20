require 'test_helper'

class PlanProjectsControllerTest < ActionController::TestCase
  setup do
    @plan_project = plan_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_project" do
    assert_difference('PlanProject.count') do
      post :create, plan_project: { description: @plan_project.description, name: @plan_project.name }
    end

    assert_redirected_to plan_project_path(assigns(:plan_project))
  end

  test "should show plan_project" do
    get :show, id: @plan_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_project
    assert_response :success
  end

  test "should update plan_project" do
    put :update, id: @plan_project, plan_project: { description: @plan_project.description, name: @plan_project.name }
    assert_redirected_to plan_project_path(assigns(:plan_project))
  end

  test "should destroy plan_project" do
    assert_difference('PlanProject.count', -1) do
      delete :destroy, id: @plan_project
    end

    assert_redirected_to plan_projects_path
  end
end
