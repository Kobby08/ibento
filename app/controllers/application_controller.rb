class ApplicationController < ActionController::Base
	
	before_action :configure_permitted_parameters, if: :devise_controller?


	private
		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:signup) do |user|
				user.permit(:first_name, :last_name, :username, :organisation_name, :email, :password, :password_confirmation)
			end
			devise_parameter_sanitizer.permit(:account_update) do |user|
				user.permit(:first_name, :last_name, :username, :organisation_name, :email, :password, :current_password, :password_confirmation)
			end
		end
	end

