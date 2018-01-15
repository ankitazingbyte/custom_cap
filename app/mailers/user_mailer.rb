class UserMailer < ApplicationMailer
	default from: 'ankitadangi11@gmail.com'
 
  def welcome_email(user)
   	@user = user
    attachments['classics-2x.png'] = File.read("#{Rails.root}/app/assets/images/classics-2x.png")
    @url  = 'http://capbeast.com/login'
	mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
