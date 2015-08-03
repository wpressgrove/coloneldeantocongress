class Admin::EmailsController < AdminController
  def index
    @emails = Email.all
    respond_to do |format|
      format.html {}
      format.csv { send_data Email::to_csv }
    end
  end
end
