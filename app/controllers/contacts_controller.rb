class ContactsController < ApplicationController
  def show
    contact = Contact.find_by(id: params[:id])
    render json: contact.as_json
  end
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end
  def last_contact
    contact_last = Contact.last
    render json: {contact: contact_last}
  end

  def create
    contact = Contact.new(
      first_name: "Jon",
      last_name: "Miksis",
      email: "jmiksis13@gmail.com",
      phone_number: "603-812-7478",
      latitude: 7.392730,
      longitude: 83.482639
    )
    contact.save
    render json: contact.as_json
  end

end
