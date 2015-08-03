class Admin::NavTabsController < AdminController
  load_and_authorize_resource

  def index
    @nav_tabs = NavTab.all
  end

  def new
    @nav_tab = NavTab.new
  end

  def edit
    @nav_tab = NavTab.find(params[:id])
  end

  def create
    @nav_tab = NavTab.new(nav_tab_params)
    @nav_tab.rank = (NavTab.all.last.rank.to_i rescue 0) + 1 if @nav_tab.rank.nil?
    if @nav_tab.save
      @nav_tab.page.update_column(:required, true)
      redirect_to admin_nav_tabs_path
    else
      render 'new'
    end
  end

  def update
    @nav_tab = NavTab.find(params[:id])
    @nav_tab.rank = (NavTab.all.last.rank.to_i rescue 0) + 1 if @nav_tab.rank.nil?
    nav_tab = NavTab.find_by_rank(params[:nav_tab][:rank]) rescue nil
    nav_tab_original_rank = @nav_tab.rank
    nav_tab_original_page = @nav_tab.page
    nav_tab.update_column(:rank, 99) unless nav_tab.nil?
    if @nav_tab.update_attributes(nav_tab_params)
      nav_tab.update_column(:rank, nav_tab_original_rank) unless nav_tab.nil?
      @nav_tab.page.update_column(:required, true)
      nav_tab_original_page.update_column(:required, false) if nav_tab_original_page != @nav_tab.page
      redirect_to admin_nav_tabs_path
    else
      nav_tab.update_column(:rank, params[:nav_tab][:rank]) unless nav_tab.nil?
      render 'edit'
    end
  end

  def destroy
    @nav_tab = NavTab.find(params[:id])
    @nav_tab.page.update_column(:required, false)
    @nav_tab.destroy
    redirect_to admin_nav_tabs_path
  end

  private
    def nav_tab_params
      params.require(:nav_tab).permit(:label, :page_id, :rank)
    end
end