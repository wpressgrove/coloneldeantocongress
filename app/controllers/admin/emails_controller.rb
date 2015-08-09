class Admin::EmailsController < AdminController
  load_and_authorize_resource

  def index
    @emails = Email.all
    respond_to do |format|
      format.html {}
      format.csv { send_data Email::to_csv }
    end
  end
end
