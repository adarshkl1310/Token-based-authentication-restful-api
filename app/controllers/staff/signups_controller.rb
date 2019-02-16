class Staff::SignupsController < ApplicationController

	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token

	def index

	end


	def new
		
	end


	def show

	end


	def update
		
	end


	def edit

	end	


	def create                   
		staff = Staff.new(staff_params)

		if staff.save
			render json: {status: 'success', message:'sign_up successfully', data:staff},status: :ok
		else
			render json: {status: 'error', message:'not sign_up', data:staff.errors},status: :unprocessable_entity
		end
	end


	def destroy

	end
	 

	private def staff_params
		params.permit(:email,:password,:password_confirmation,:phone,:first_name,:last_name)
	end


end
















































