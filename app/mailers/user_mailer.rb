class UserMailer < ApplicationMailer

  def reset_password_email(user)
    @user = User.find user.id
    @url  = edit_password_reset_url(@user.reset_password_token)
    mail(to: user.email,
        subject: t('defaults.messages.reset_password_subject'))
  end
end
