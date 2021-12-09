class ImagesController < ApplicationController

  def new
    @image = Image.new
  end

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)
    @image.user_id = current_user.id
    @image.save
    redirect_to images_path
  end

  def edit
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:camp_site_name,:image,:caption)
  end

end
