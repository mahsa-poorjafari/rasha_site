class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def send_user_mail
    mail(to: 'mahsa.poorjafari@gmail.com', subject: 'Rasha smart')
  end
end
