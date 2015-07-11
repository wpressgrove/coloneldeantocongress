class PagesController < ApplicationController
  def index
    @page = Page.all.first
    render 'pages/show'
  end

  def show
    @page = Page.find(params[:id])
  end
end