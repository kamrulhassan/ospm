class PlanOrganization < ActiveRecord::Base
  attr_accessible :country, :description, :name, :short_name
  has_many :plan_resources, :dependent => :destroy

  has_and_belongs_to_many :plan_projects
end
