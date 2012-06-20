class PlanElementResource < ActiveRecord::Base
	belongs_to :plan_element
	belongs_to :plan_resource
end
