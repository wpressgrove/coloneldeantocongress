class Admin::DonationsController < AdminController
  load_and_authorize_resource

  def index
    @donations = Donation.all
  end
end
