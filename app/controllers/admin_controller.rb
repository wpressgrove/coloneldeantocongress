class AdminController < ApplicationController
  before_action :authenticate_user!

  layout 'admin'

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to new_user_session_path
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render 'public/404'
  end
end
