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

end
