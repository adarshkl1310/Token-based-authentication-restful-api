class V1::ItemsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def show
		item = Item.find(params[:id])
		item[:image_url] = Image.get_image_url_by_id(item.image_id)
		render json: {status: 'success', data:item}, status: :ok 
	end


	private def image_params
	   params.permit(:name,:price,:category_id,:image_id,:short_description,:long_description,:is_active,:preparation_time,:serves,:calorie_count,:meal_type_id,:cuisine_id,:spicy_level ,:is_new,:is_bestseller)
	end

end	
