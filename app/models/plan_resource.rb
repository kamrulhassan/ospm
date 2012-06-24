class PlanResource < ActiveRecord::Base
	attr_accessible :description, :name, :plan_organization_id

	has_many :plan_element_resources, :dependent => :destroy
	has_many :plan_elements, :through => :plan_element_resources, :source => :plan_element

	belongs_to :plan_organization
end
