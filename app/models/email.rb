class Email < ApplicationRecord
	belongs_to :contact, optional: true
	validates :email, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP }   
end
