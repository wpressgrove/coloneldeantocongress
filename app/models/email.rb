class Email < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, email: true

  def self.to_csv
    emails = Email.all
    file = CSV.generate do |csv|
      csv << ['Email', 'Time Submitted']
      emails.each do |email|
        csv << [email.email, (email.created_at.strftime('%b %d %I:%M %p') rescue '')]
      end
    end
    file
  end
end