class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    send_contact_mail if @contact.save
    flash[:notice] = "我們已收到你的問題，會儘快處理"
    redirect_to stores_path
  end

  private
  def send_contact_mail
    ContactMailer.contact_mail(@contact).deliver_now
  end

  def contact_params
    params.require(:contact).permit(:title, :from, :content)
  end
end
