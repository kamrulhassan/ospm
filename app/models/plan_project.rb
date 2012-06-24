class PlanProject < ActiveRecord::Base
	attr_accessible :description, :name, :plan_organization_ids
	has_many :plan_workpackages, :dependent => :destroy
	has_many :plan_milestones, :dependent => :destroy

	has_and_belongs_to_many :plan_organizations
end
