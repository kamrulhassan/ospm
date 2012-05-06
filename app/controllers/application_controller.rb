class ApplicationController < ActionController::Base
  protect_from_forgery

rescue_from CanCan::AccessDenied do |exception|
	flash[:error]="We are sorry!!! you are not authorized to view this content"
	redirect_to root_url
end

end
