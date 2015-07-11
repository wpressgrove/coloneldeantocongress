class Admin::PagesController < AdminController
  load_and_authorize_resource

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to admin_pages_path
    else
      render 'new'
    end
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      redirect_to admin_pages_path
    else
      render 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_path
  end

  private

  def page_params
    params.require(:page).permit(:name, :has_header, :has_footer)
  end
end