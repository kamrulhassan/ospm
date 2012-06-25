class AddPlanOrganizationIdInPlanWorkpackages < ActiveRecord::Migration
  def change
  	 add_column :plan_workpackages, :plan_organization_id, :integer
  end
end
