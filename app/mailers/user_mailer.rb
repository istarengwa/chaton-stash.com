class UserMailer < ApplicationMailer

  default from: "no-reply@gmail.com"
  def welcome_email(user)
    @user = user
    @url = "www.chaton-stash.fr"
    mail(to: @user.email_address, subject: "Bienvenue !")
  end
  
end
