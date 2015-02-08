class AuthenticationMailer < ActionMailer::Base
  default from: "fantasyrush.beta@gmail.com"

  def login_email(user)
    @user = user
    mail(to: @user.email, subject: 'Login FantasyRaid')
  end
end
