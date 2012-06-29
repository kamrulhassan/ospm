class PlanWorkpackage < ActiveRecord::Base
  belongs_to :plan_project
  belongs_to :plan_organization

  attr_accessible :title, :wp_type, :plan_project_id,:description,:plan_organization_id, :plan_tasks_attributes, :plan_deliverables_attributes
  
  # has_many :plan_elements, :dependent => :destroy
  has_many :plan_tasks, :dependent => :destroy
  has_many :plan_deliverables, :dependent => :destroy
  # accepts_nested_attributes_for :plan_tasks,  :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :plan_tasks,  :reject_if => :all_blank, :allow_destroy => true
accepts_nested_attributes_for :plan_deliverables,  :reject_if => :all_blank, :allow_destroy => true  
end
