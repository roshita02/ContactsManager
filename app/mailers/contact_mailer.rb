class ContactMailer < ApplicationMailer
	
	def greeting_email(contact)
		@contact = contact
		mail to: @contact.email, subject: "Greetings from Contacts Manager"
	end
end
