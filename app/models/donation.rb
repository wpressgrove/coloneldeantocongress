class Donation < ActiveRecord::Base
  validates :stripe_token, presence: true, uniqueness: true
  validates :email, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
