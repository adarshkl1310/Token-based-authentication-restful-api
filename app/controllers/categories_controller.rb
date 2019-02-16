class CategoriesController < ApplicationController



before_action :find_category, only: [:show, :edit, :update, :destroy]

def index

@categories = Category.all	



end

def new

@category = Category.new	

end

def show

@category = Category.find(params[:id])
@items = @category.items




end

def edit
end

def create

 @category = Category.create(page_params)
  if @category.save
  redirect_to categories_path

end	
end

def update

	if @category.update(category_params)
	 redirect_to categories_path
	else
	 render 'edit'

    end	
end




def destroy
  @category.destroy
   redirect_to categories_path


end





private


def page_params
  params.require(:category).permit(:image_id,:name,:description,:is_active)
end

def find_category
 @category = Category.find(params[:id])

end	



end
