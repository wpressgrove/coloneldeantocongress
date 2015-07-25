class DonationsController < ApplicationController
  def create
    amount = params[:donation][:amount]

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => amount,
      :description => 'Donation to ColonelDeantoCongress',
      :currency    => 'usd'
    )

    @donation = Donation.new
    @donation.stripe_token = params[:stripeToken]
    @donation.email = params[:stripeEmail]
    @donation.amount = amount
    @donation.save
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
