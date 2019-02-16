class ImagesController < ApplicationController


before_action :find_menuimages, only: [:show, :edit, :update, :destroy]

def index
@images = Image.all 


end

def new
@image = Image.new
  
end

def show
end

def edit
end

def create
 @image = Image.create(page_params)
  if @image.save
  redirect_to images_path
else
  render 'new'
end 
end

def update
  if @image.update(page_params)
   redirect_to images_path
    else
      render 'edit'
    end 
end

def destroy
    @image.destroy
    redirect_to images_path
end




private


def page_params
  params.require(:image).permit(:filename,:title,:item_image)
end


def find_menuimages

  @image = Image.find(params[:id])

end

end