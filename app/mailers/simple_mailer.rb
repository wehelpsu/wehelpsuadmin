class SimpleMailer < ActionMailer::Base
  default from: "wehelpsu@gmail.com"
 
    def welcome_email
        mail(:to => 'rvk0106@gmail.com',:from => 'wehelpsu@gmail.com' , :subject => "Welcome to My Awesome Site")
    end
    def send_email(to,subject,body)
        mail(:to => to,:from => 'wehelpsu@gmail.com' , :subject => subject,:body => body)
    end
end
