class ContactMailer < ApplicationMailer
  default to: "eddie@5xruby.tw"

  def contact_mail(contact)
    @contact = contact
    mail(from: contact.from, subject: contact.title)
  end
end
