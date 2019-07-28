class Email < ApplicationRecord
	belongs_to :contact, optional: true
	attr_accessible :email, :label
	validates :email, :presence => true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
