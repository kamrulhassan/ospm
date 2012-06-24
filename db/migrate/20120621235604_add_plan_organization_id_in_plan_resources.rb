class AddPlanOrganizationIdInPlanResources < ActiveRecord::Migration
  def change
  	 add_column :plan_resources, :plan_organization_id, :integer
  end
end
