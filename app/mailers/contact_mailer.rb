class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_contact.subject
  #


  def sendmail_contact(contact)
    @contact = contact
    mail to: "contact.email",
         subject: '【Achieve】お問い合わせが送信されました',
         form: 'no-reply@letter_opener_web.com'
  end

end
