class ApplicationController < ActionController::Base
  protect_from_forgery

rescue_from CanCan::AccessDenied do |exception|
	flash[:error]="We are sorry!!! you are not authorized to view this content"
	redirect_to root_url
end


# define the ability base on the respected user
# current_user are the user of the repository system
# current_plan_user are the user of the project planning system
def current_ability
  @current_ability ||= case
                       when current_user
                         Ability.new(current_user)
                       when current_plan_user
                         Abilityplanuser.new(current_plan_user)
                       end
end

def clear_all_session
	sign_out current_plan_user
	sign_out current_user
end


# we wants to transform our actual plan project details to repository project
# we receive plan_project as paramenter
def create_repo_project(plan_project)
	@project=Project.create(:name => plan_project.name, :description => plan_project.description)

	# create_user_for_repository(current_plan_user.email, :admin, @project)

	@plan_project_creator=User.find_by_email(current_plan_user.email)
	@plan_project_creator=User.create({:email => "#{current_plan_user.email}", :password => "111111", :password_confirmation => "111111" }) unless @plan_project_creator

	assign_role(@plan_project_creator, :admin, @project)

	plan_project_workpackages = plan_project.plan_workpackages

	plan_project_workpackages.each do |plan_workpackage|

		# plan_elements=plan_workpackage.plan_elements

		# plan_elements.each do |plan_element|
		# 		# insert deliverable
		# 		@repo_deliverable=Deliverable.create(:description => plan_element.description, :start_date => plan_element.start_date, :end_date => plan_element.end_date, :project_id => @project.id)

		# 		plan_element.plan_resources.each do | assigneduser|
		# 			# insert user and assign admin role to deliverables
		# 			create_user_for_repository("#{assigneduser.name}@ospm.com",:admin, @repo_deliverable)
		# 		end
		# 		assign_role(@plan_project_creator, :read, @repo_deliverable)
		# end

		plan_elements=plan_workpackage.plan_tasks

		plan_elements.each do |plan_element|
				# insert deliverable
				@repo_deliverable=Deliverable.create(:description => plan_element.description, :start_date => plan_element.start_date, :end_date => plan_element.end_date, :project_id => @project.id, :display_option => 0, :status => 0)

				plan_element.plan_resources.each do | assigneduser|
					# insert user and assign admin role to deliverables
					create_user_for_repository("#{assigneduser.name}@ospm.com",:admin, @repo_deliverable)
				end
				assign_role(@plan_project_creator, :read, @repo_deliverable)
		end



		plan_elements=plan_workpackage.plan_deliverables

		plan_elements.each do |plan_element|
				# insert deliverable
				@repo_deliverable=Deliverable.create(:description => plan_element.description, :start_date => plan_element.start_date, :end_date => plan_element.end_date, :project_id => @project.id, :display_option => 1, :status => 0)

				plan_element.plan_resources.each do | assigneduser|
					# insert user and assign admin role to deliverables
					create_user_for_repository("#{assigneduser.name}@ospm.com",:admin, @repo_deliverable)
				end
				assign_role(@plan_project_creator, :read, @repo_deliverable)
		end

		deliverables=Deliverable.all
		users=User.all

		deliverables.each do |del|
		users.each do |usr|
			usr.add_role :read, del unless usr.has_role? :admin, del
		end
		end

		users.each do |usr|
			usr.add_role :read, @project unless usr.has_role? :admin, @project
		end

	end
end

def create_user_for_repository(email, role, instance)
	user=User.find_by_email(email)
	user=User.create({:email => "#{email}", :password => "111111", :password_confirmation => "111111" }) unless user
	assign_role(user,role,instance)
	# user.add_role role, instance unless user.has_role? role, instance
end

def assign_role(user, role, instance)
	user.add_role role, instance unless user.has_role? role, instance
end
end
