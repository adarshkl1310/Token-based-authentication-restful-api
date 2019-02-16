class Admin::SignupsController < ApplicationController

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
	    user = User.new(user_params)

	    if user.save
	      	render json: {status: 'success', data:user}, status: :ok
	    else
	      	render json: {status: 'error', message:'There was some error in registering the user.', data:user.errors}, status: :unprocessable_entity
	    end
	end


	def destroy

	end


	private 

	def user_params
		
		params.permit(:first_name,:last_name,:email,:password,:phone)
 
 	end


end	


