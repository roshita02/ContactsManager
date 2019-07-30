class ContactMailer < ApplicationMailer
	
		def greeting_email(contact)
		@contact = contact
		@contact.email.each do |b|
		mail to: b.email, subject: "Greetings from Contacts Manager"
		end
	end
end

