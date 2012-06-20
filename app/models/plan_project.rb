class PlanProject < ActiveRecord::Base
	attr_accessible :description, :name
	has_many :plan_workpackages, :dependent => :destroy
	has_many :plan_milestones, :dependent => :destroy
end
