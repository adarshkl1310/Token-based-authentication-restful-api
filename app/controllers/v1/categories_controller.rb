class V1::CategoriesController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		categories = Category.all
		categories.each_with_index do |category, index|

			categories[index][:image_url] = Image.get_image_url_by_id(category.image_id)
			
		end
		render json: {status: 'success', data:categories}, status: :ok
	end


	def show_items
		category = Category.find(params[:id])
		items = category.items
		items.each_with_index do |i, index|
			items[index][:image_url] = Image.get_image_url_by_id(i.image_id)
		end
		render json: {status: 'success', data:items}, status: :ok	
	end


	private def category_params
		params.permit(:image_id,:name,:description,:is_active)
	end

end
