class PlanResource < ActiveRecord::Base
	attr_accessible :description, :name

	has_many :plan_element_resources, :dependent => :destroy
	has_many :plan_elements, :through => :plan_element_resources, :source => :plan_element
end
