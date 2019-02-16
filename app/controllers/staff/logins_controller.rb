class Staff::LoginsController < ApplicationController

	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token

	def index

	end


	def new

	end


	def show

	end	


	def edit

	end	


	def create
		staff = Staff.where(email: params[:email]).first

		if staff&.valid_password?(params[:password]) 
			render json: staff.as_json(only: [:email,:first_name,:last_name,:phone]), status: :created
		else
			head(:unauthorized)
		end
	end


	def destroy
		current_staff = nil
		if current_staff.save
			head(:ok)
		else
			head(:unauthorized)
		end
	end	


end