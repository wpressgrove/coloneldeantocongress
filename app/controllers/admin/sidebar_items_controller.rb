class Admin::SidebarItemsController < AdminController
  load_and_authorize_resource
  before_action :set_page
  before_action :set_sidebar_item

  def create
    @sidebar_item.order = @page.sidebar_items.last.order.to_i + 1
    if @sidebar_item.update_attributes(sidebar_item_params)
      redirect_to edit_admin_page_path(@page)
    else
      render 'new'
    end
  end

  def update
    @sidebar_item.order = @page.sidebar_items.last.order.to_i + 1 if @sidebar_item.order.nil?
    sidebar_item = @page.sidebar_items.find_by_order(params[:sidebar_item][:order]) rescue nil
    sidebar_item_original_order = @sidebar_item.order
    sidebar_item.update_column(:order, 99) unless sidebar_item.nil?
    @sidebar_item.order 
    if @sidebar_item.update_attributes(sidebar_item_params)
      sidebar_item.update_column(:order, sidebar_item_original_order) unless sidebar_item.nil?
      respond_to do |format|
        format.html { redirect_to edit_admin_page_path(@page) }
        format.js {}
      end
    else
      sidebar_item.update_column(:order, params[:sidebar_item][:order]) unless sidebar_item.nil?
      render 'edit'
    end
  end

  def destroy
    @sidebar_item.destroy
    redirect_to edit_admin_page_path(@page)
  end

  private
    def sidebar_item_params
      params.require(:sidebar_item).permit(:name, :body, :order)
    end

    def set_sidebar_item
      @sidebar_item = @page.sidebar_items.find(params[:id]) rescue @page.sidebar_items.new
    end

    def set_page
      @page = Page.find(params[:page_id])
    end
end