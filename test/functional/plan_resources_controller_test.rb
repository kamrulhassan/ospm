require 'test_helper'

class PlanResourcesControllerTest < ActionController::TestCase
  setup do
    @plan_resource = plan_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_resource" do
    assert_difference('PlanResource.count') do
      post :create, plan_resource: { description: @plan_resource.description, name: @plan_resource.name }
    end

    assert_redirected_to plan_resource_path(assigns(:plan_resource))
  end

  test "should show plan_resource" do
    get :show, id: @plan_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_resource
    assert_response :success
  end

  test "should update plan_resource" do
    put :update, id: @plan_resource, plan_resource: { description: @plan_resource.description, name: @plan_resource.name }
    assert_redirected_to plan_resource_path(assigns(:plan_resource))
  end

  test "should destroy plan_resource" do
    assert_difference('PlanResource.count', -1) do
      delete :destroy, id: @plan_resource
    end

    assert_redirected_to plan_resources_path
  end
end
