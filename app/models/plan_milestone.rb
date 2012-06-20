class PlanMilestone < ActiveRecord::Base
  belongs_to :plan_project
  attr_accessible :date, :description, :means_of_verificaiton, :name, :plan_project_id
end
