class Admin::MediaController < AdminController
  load_and_authorize_resource

  def index
    @media = Medium.all
  end
end
