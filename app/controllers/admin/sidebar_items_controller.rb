class Admin::SidebarItemsController < AdminController
  load_and_authorize_resource
  before_action :set_page
  before_action :set_sidebar_item

  def create
    if @sidebar_item.update_attributes(sidebar_item_params)
      redirect_to edit_admin_page_path(@page)
    else
      render 'new'
    end
  end

  def update
    @sidebar_item.rank = (@page.sidebar_items.last.rank.to_i rescue 0) + 1 if @sidebar_item.rank.nil?
    sidebar_item = @page.sidebar_items.find_by_rank(params[:sidebar_item][:rank]) rescue nil
    sidebar_item_original_rank = @sidebar_item.rank
    sidebar_item.update_column(:rank, 99) unless sidebar_item.nil?
    @sidebar_item.rank
    if @sidebar_item.update_attributes(sidebar_item_params)
      sidebar_item.update_column(:rank, sidebar_item_original_rank) unless sidebar_item.nil?
      respond_to do |format|
        format.html { redirect_to edit_admin_page_path(@page) }
        format.js {}
      end
    else
      sidebar_item.update_column(:rank, params[:sidebar_item][:rank]) unless sidebar_item.nil?
      render 'edit'
    end
  end

  def destroy
    @sidebar_item.destroy
    redirect_to edit_admin_page_path(@page)
  end

  private
    def sidebar_item_params
      params.require(:sidebar_item).permit(:name, :body, :rank)
    end

    def set_sidebar_item
      @sidebar_item = @page.sidebar_items.find(params[:id]) rescue @page.sidebar_items.new({rank: (@page.sidebar_items.last.rank.to_i rescue 0) + 1})
    end

    def set_page
      @page = Page.find(params[:page_id])
    end
end