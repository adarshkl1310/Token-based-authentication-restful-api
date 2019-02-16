class Admin::LoginsController < ApplicationController

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
	 	user = User.where(email: params[:email]).first
	  
	  	if user&.valid_password?(params[:password]) 
	  		render json: user.as_json(only:[:email,:first_name,:last_name,:phone,:authentication_token]), status: :created
	  	else
	  		head(:unauthorized)
		end
	end


	def destroy
		current_user&.authentication_token = nil
		if current_user.save
			head(:ok)
		else
			head(:unauthorized)
		end
	end	


end	



