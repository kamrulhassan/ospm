class PlanWorkpackage < ActiveRecord::Base
  belongs_to :plan_project
  attr_accessible :title, :wp_type, :plan_project_id
  
  has_many :plan_elements, :dependent => :destroy
  # has_many :plan_tasks, :dependent => :destroy
  # has_many :plan_deliverables, :dependent => :destroy
end
