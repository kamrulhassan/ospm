require 'test_helper'

class PlanOrganizationsControllerTest < ActionController::TestCase
  setup do
    @plan_organization = plan_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_organization" do
    assert_difference('PlanOrganization.count') do
      post :create, plan_organization: { country: @plan_organization.country, description: @plan_organization.description, name: @plan_organization.name, short_name: @plan_organization.short_name }
    end

    assert_redirected_to plan_organization_path(assigns(:plan_organization))
  end

  test "should show plan_organization" do
    get :show, id: @plan_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_organization
    assert_response :success
  end

  test "should update plan_organization" do
    put :update, id: @plan_organization, plan_organization: { country: @plan_organization.country, description: @plan_organization.description, name: @plan_organization.name, short_name: @plan_organization.short_name }
    assert_redirected_to plan_organization_path(assigns(:plan_organization))
  end

  test "should destroy plan_organization" do
    assert_difference('PlanOrganization.count', -1) do
      delete :destroy, id: @plan_organization
    end

    assert_redirected_to plan_organizations_path
  end
end
