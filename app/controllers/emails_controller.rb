class EmailsController < ApplicationController
  EMAIL_ADDED = 'Your email has been added to the email campaign list!'
  EMAIL_ALREADY_ADDED = 'Thank you! We already have your email in our system'

  def create
    @email = Email.new(email_params)
    if @email.save
      flash[:notice] = EMAIL_ADDED
    elsif(@email.errors.any? && !@email.errors[:email].nil? && @email.errors.full_messages.first.to_s == 'Email has already been taken')
      flash[:alert] = EMAIL_ALREADY_ADDED
    else
      flash[:alert] = @email.errors.full_messages.first.to_s
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    render 'emails/create'
  end

  private

  def email_params
    params.require(:email).permit(:email)
  end
end