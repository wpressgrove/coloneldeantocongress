class Admin::ImagesController < AdminController
  load_and_authorize_resource
  before_action :set_image, except: [:index]

  def index
    @images = Image.all
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to admin_images_path
    else
      render 'new'
    end
  end

  def update
    if @image.update_attributes(image_params)
      redirect_to admin_images_path
    else
      render 'edit'
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :file)
  end

  def set_image
    Image.find(params[:id]) rescue Image.new
  end
end
