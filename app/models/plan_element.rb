require 'chronic'

class PlanElement < ActiveRecord::Base
  belongs_to :plan_workpackage
  attr_accessible :description, :end_date, :start_date, :plan_workpackage_id, :plan_resource_ids, :cstart_date, :cend_date
  
  #plan element has many resources to accomplish its goal
  has_many :plan_element_resources, :dependent => :destroy
  has_many :plan_resources, :through => :plan_element_resources, :source => :plan_resource

  #chroical datetime
  def cend_date
        self.end_date
  end
  def cend_date=(s)
        self.end_date = Chronic.parse(s)
  end
  def cstart_date
        self.start_date
  end
  def cstart_date=(s)
        self.start_date = Chronic.parse(s)
  end
end
