class Admin::SlideshowItemsController < AdminController
  load_and_authorize_resource
  before_action :set_page
  before_action :set_slideshow_item, except: [:index]

  def index
    @slideshow_items = @page.slideshow_items
  end

  def create
    if @slideshow_item.update_attributes(slideshow_item_params)
      redirect_to admin_page_slideshow_items_path(@page)
    else
      render 'new'
    end
  end

  def update
    @slideshow_item.rank = (@page.slideshow_items.last.rank.to_i rescue 0) + 1 if @slideshow_item.rank.nil?
    slideshow_item = @page.slideshow_items.find_by_rank(params[:slideshow_item][:rank]) rescue nil
    slideshow_item_original_rank = @slideshow_item.rank
    slideshow_item.update_column(:rank, 99) unless slideshow_item.nil?
    if @slideshow_item.update_attributes(slideshow_item_params)
      slideshow_item.update_column(:rank, slideshow_item_original_rank) unless slideshow_item.nil?
      respond_to do |format|
        format.html { redirect_to admin_page_slideshow_items_path(@page) }
        format.js {}
      end
    else
      slideshow_item.update_column(:rank, params[:slideshow_item][:rank]) unless slideshow_item.nil?
      render 'edit'
    end
  end

  def destroy
    @slideshow_item.destroy
    redirect_to admin_page_slideshow_items_path(@page)
  end

  private

  def slideshow_item_params
    params.require(:slideshow_item).permit(:subtitle, :rank, :image_id)
  end

  def set_slideshow_item
    @slideshow_item = @page.slideshow_items.find(params[:id]) rescue @page.slideshow_items.new({rank: (@page.slideshow_items.last.rank.to_i rescue 0) + 1})
  end

  def set_page
    @page = Page.find(params[:page_id])
  end
end
