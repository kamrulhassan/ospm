class Deliverable < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :end_date, :start_date, :project_id, :attachment, :display_option, :status

	# file attachment settings goes here (:
    has_attached_file :attachment,
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"

	# for rolify 
  resourcify

end
