class AddPlanOrganizationsPlanProjectsRelationshipTable < ActiveRecord::Migration
  def change
	create_table :plan_organizations_plan_projects do |t|
		t.references :plan_organization
		t.references :plan_project
	end
  end
end
