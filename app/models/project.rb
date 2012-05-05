class Project < ActiveRecord::Base
  attr_accessible :description, :name

	#for rolify 
  resourcify
end
