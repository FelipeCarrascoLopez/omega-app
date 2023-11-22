class UserMailer < ApplicationMailer

URL = 'http://127.0.0.1:3000'

  def confirm_account
    @user = params[:user]
    @url = URL#params[:url]
    @link = "#{URL}/confirm_email/#{@user.token}"
    mail(to: @user.email, subject: 'Welcome to My Omega Blog')
  end
end
