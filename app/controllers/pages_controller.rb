class PagesController < ApplicationController
  layout 'plain'

  def index
    @page = Page.all.first
    render 'pages/show'
  end

  def show
    @page = Page.find_by_slug(params[:id])
    @page = Page.find(params[:id]) if @page.nil?
  end
end