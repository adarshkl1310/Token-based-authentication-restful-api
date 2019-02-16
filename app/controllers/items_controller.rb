class ItemsController < ApplicationController




before_action :find_category, only: [:show, :edit, :update, :destroy]

def index

@items = Item.all
@images = Image.all	

end

def new

@item = Item.new	

end

def show
end

def edit
end

def create

 @item = Item.create(page_params)
  if @item.save
  redirect_to items_path

end	
end

def update

	if @item.update(page_params)
	 redirect_to items_path
	else
	 render 'edit'

    end	
end




def destroy
  @item.destroy
   redirect_to items_path


end





private


def page_params
  params.require(:item).permit(:name,:price,:category_id,:image_id,:short_description,:long_description,:is_active,:preparation_time,:serves,:calorie_count,:meal_type_id,:cuisine_id,:spicy_level ,:is_new,:is_bestseller)
end

def find_category
 @item = Item.find(params[:id])

end	



end

