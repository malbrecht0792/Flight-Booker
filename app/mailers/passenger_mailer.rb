class PassengerMailer < ApplicationMailer
	default from: 'flightbookernotifications@example.com'
 
	def thank_you_email(user, email)
		@user = user
		#@url  = 'http://localhost:3080/'
		mail(to: email, subject: 'Booking Confirmation')
	end

end
