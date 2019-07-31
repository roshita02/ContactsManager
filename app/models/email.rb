class Email < ApplicationRecord
	belongs_to :contact, optional: true
	validates :email, :presence => true, :uniqueness => true, format: { with: URI::MailTo::EMAIL_REGEXP }, :on => :create  
end
