class PlanWorkpackage < ActiveRecord::Base
  belongs_to :plan_project
  belongs_to :plan_organization

  attr_accessible :title, :wp_type, :plan_project_id,:description,:plan_organization_id
  
  # has_many :plan_elements, :dependent => :destroy
  has_many :plan_tasks, :dependent => :destroy
  has_many :plan_deliverables, :dependent => :destroy
  # accepts_nested_attributes_for :plan_tasks,  :reject_if => :all_blank, :allow_destroy => true
end
