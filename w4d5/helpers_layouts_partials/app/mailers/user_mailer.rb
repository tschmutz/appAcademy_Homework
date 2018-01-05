class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'
  
  def welcome_email(user)
    @user = user 
    @url = 'http://99cats'
    mail(to: user.username, subject: 'Welcome to 99cats')
  end 
end
