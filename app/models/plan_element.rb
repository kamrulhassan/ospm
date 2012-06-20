class PlanElement < ActiveRecord::Base
  belongs_to :plan_workpackage
  attr_accessible :description, :end_date, :start_date, :plan_workpackage_id, :plan_resource_ids
  
  #plan element has many resources to accomplish its goal
  has_many :plan_element_resources, :dependent => :destroy
  has_many :plan_resources, :through => :plan_element_resources, :source => :plan_resource
end
