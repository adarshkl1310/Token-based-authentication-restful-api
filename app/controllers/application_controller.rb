class ApplicationController < ActionController::Base

	acts_as_token_authentication_handler_for User, fallback: :none

	acts_as_token_authentication_handler_for Staff, fallback: :none

	protect_from_forgery with: :exception

 	before_action :configure_permitted_parameters, if: :devise_controller?

	def check_is_admin
	 	if current_user.is_admin
			return true
		else
			redirect_to items_path,notice:"page looking for sign_in"
		end
	end


 	private

	def after_sign_out_path_for(resource_or_scope)
	    new_user_session_path
	end


	def after_sign_in_path_for(resource_or_scope)
    	items_path
	end

	
	protected

	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:phone,:first_name,:last_name])
	   devise_parameter_sanitizer.permit(:account_update, keys: [:phone,:first_name,:last_name]) 
	end

end
