class PassengerMailer < ActionMailer::Base
  default from: "yuribuerov@gmail.com"

  def thank_you_email(passenger)
  	@passenger = passenger
  	@url = 'http://www.google.com'
  	mail(to: @passenger.email, subject: 'thank you mail')
  end
end
