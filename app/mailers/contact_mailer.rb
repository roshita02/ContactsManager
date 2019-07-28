class ContactMailer < ApplicationMailer
	
		def greeting_email(contact)
		@contact = contact
		mail to: "<roshitashakya07@gmail.com>", subject: "Greetings from Contacts Manager"
	end
end

